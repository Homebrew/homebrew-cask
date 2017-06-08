cask 'latexdraw' do
  version '3.3.5'
  sha256 '905da2d258baf777dff9cb14468207dff04094049f9bc82f050d8a8541967965'

  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/latexdraw/rss',
          checkpoint: '359991ab747f45b0157314d4826dc2cb3f311e222e6f3dca4fff361cd9d35144'
  name 'LaTexDraw'
  homepage 'http://latexdraw.sourceforge.net/'

  app "LaTexDraw-#{version}.app"
end
