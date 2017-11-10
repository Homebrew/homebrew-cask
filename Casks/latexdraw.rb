cask 'latexdraw' do
  version '3.3.6'
  sha256 '01a29a4886cf71ad914724d38eb5d470fae707eac40f5f1e70d45673780e4b07'

  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/latexdraw/rss?path=/latexdraw',
          checkpoint: '652dd1b1e3145652e548c5eb84e68888ede7a61c52008fbd68be19c884a2fbdd'
  name 'LaTexDraw'
  homepage 'http://latexdraw.sourceforge.net/'

  app "LaTexDraw-#{version}.app"

  caveats do
    depends_on_java('8')
  end
end
