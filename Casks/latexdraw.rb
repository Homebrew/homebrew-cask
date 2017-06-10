cask 'latexdraw' do
  version '3.3.5'
  sha256 '905da2d258baf777dff9cb14468207dff04094049f9bc82f050d8a8541967965'

  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/latexdraw/rss?path=/latexdraw',
          checkpoint: 'e032f06eb8bb7ed367670947673f763ff1d9b4a1cc662a969c28c29dcbcabe56'
  name 'LaTexDraw'
  homepage 'http://latexdraw.sourceforge.net/'

  app "LaTexDraw-#{version}.app"
end
