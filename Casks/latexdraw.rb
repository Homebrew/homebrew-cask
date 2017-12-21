cask 'latexdraw' do
  version '3.3.7'
  sha256 '7a4db698767e74ca9548d26caec385faf12c8565535c1c108d9ec450193b25e5'

  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/latexdraw/rss?path=/latexdraw',
          checkpoint: '37de4623cbf3183c9fa9a7304d5bb489d8690f81c6c4eb88c24b10f49e25df86'
  name 'LaTexDraw'
  homepage 'http://latexdraw.sourceforge.net/'

  app "LaTexDraw-#{version}.app"

  caveats do
    depends_on_java('8')
  end
end
