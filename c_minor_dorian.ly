%{
    This program is part of a larger ensemble which aims to share musical scales, Open Musical Scale.
    Copyright (C) 2021 Tiger4

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see https://www.gnu.org/licenses/.
%}

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

% use it in the title block:
\header {
  title = "C- Minor (Dorian)"
  subtitle = \date
  copyright = "License : https://www.gnu.org/licenses/gpl-3.0.html"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  c d ees f g a bes c %es add a flat to a note
}

\score {
  \new Staff \melody
  \layout { }
  \midi { }
}