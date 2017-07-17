cask 'latexdraw' do
  version '3.3.6'
  sha256 '01a29a4886cf71ad914724d38eb5d470fae707eac40f5f1e70d45673780e4b07'

  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.app"
  appcast 'https://sourceforge.net/projects/latexdraw/rss?path=/latexdraw',
          checkpoint: '88d1f7154a75ba13476ee3ce6498452c54c23bb4d0a4aa5561c93c3bcda239ec'
  name 'LaTexDraw'
  homepage 'http://latexdraw.sourceforge.net/'

  app "LaTexDraw-#{version}.app"
end
