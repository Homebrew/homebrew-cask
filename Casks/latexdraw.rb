cask 'latexdraw' do
  version '3.3.9'
  sha256 '1197536a5ce3b343e85696fbc5f2821092e885086760d9af4bfe11c073551f6b'

  # downloads.sourceforge.net/latexdraw/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/latexdraw/rss?path=/latexdraw'
  name 'LaTexDraw'
  homepage 'https://latexdraw.sourceforge.io/'

  app "LaTeXDraw-#{version}.app"

  caveats do
    depends_on_java '8'
  end
end
