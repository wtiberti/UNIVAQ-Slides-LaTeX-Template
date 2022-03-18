\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univaqslides}[UNIVAQ slides]

\LoadClass[aspectratio=169]{beamer}

\RequirePackage[utf8]{inputenc}
\RequirePackage{textpos}
\RequirePackage{hyperref}
\RequirePackage{xcolor}

% Logo UNIVAQ e DISIM
\addtobeamertemplate{frametitle}{}{%
\begin{textblock*}{100mm}(8.5cm,-1.05cm)			% 16:9
	\tiny \centering
	\includegraphics[height=0.75cm,width=10cm,keepaspectratio]{logos/logonobg}
	\\ ICT Security Course - DT0349
\end{textblock*}}

% Numero pagine
\addtobeamertemplate{navigation symbols}{}{%
	\usebeamerfont{footline}%
	\usebeamercolor[fg]{black}%
	\hspace{1em}%
	\insertframenumber/\inserttotalframenumber
}

% Colore UNIVAQ #F2C451 + Colori per esempi e blocchi
\definecolor{univaqyellow}{rgb}{0.9453125, 0.765625, 0.31640625}
\definecolor{univaqgray}{rgb}{0.9, 0.9, 0.9}
\definecolor{univaqgreen}{rgb}{0.0, 0.5, 0.0}

% Colori per la struttura base
\setbeamercolor{structure}{fg=white}
\setbeamercolor{title}{fg=white}
\setbeamercolor{title in head/foot}{fg=black}
\setbeamercolor{author}{fg=black}
\setbeamercolor{block title}{fg=white, bg=univaqyellow}
\setbeamercolor{block body}{bg=univaqyellow!5}
\setbeamercolor*{block title example}{fg=white,bg=univaqgreen}
\setbeamercolor*{block body example}{bg=univaqgreen!5}

% Slide Iniziale
\newcommand{\univaqtitlepage}{%
	\setbeamertemplate{background}{
		\includegraphics[height=9cm,width=16cm]{logos/back169}
	}
	\begin{frame}{}	\titlepage	\end{frame}
	\setbeamertemplate{background}{}
	\setbeamercolor{structure}{fg=black,bg=univaqyellow}
}

% Slide di inizio sezione
\newcommand{\univaqsectionpage}[1]{%
	\setbeamertemplate{background}{
	\includegraphics[height=9cm,width=16cm]{logos/back169}}
	\section{#1}
	\begin{frame}{}
		\Huge #1
	\end{frame}
	\setbeamertemplate{background}{}
	\setbeamercolor{structure}{fg=black,bg=univaqyellow}
}
