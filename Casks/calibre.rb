cask 'calibre' do
  version '3.17.0'
  sha256 '69f303c05155b84db10596a6f4a9ba45976139502cc8aecb8159f233736a9174'

  url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom',
          checkpoint: 'd7e2f5e0a978d4bd926e8398c62076425ac2f965c13fc03e0001e17677a9ab99'
  name 'calibre'
  homepage 'https://calibre-ebook.com/'

  depends_on macos: '>= :mavericks'

  app 'calibre.app'
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-complete"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-customize"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-debug"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-parallel"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-server"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-smtp"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibredb"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-convert"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-device"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-edit"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-meta"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-polish"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-viewer"
  binary "#{appdir}/calibre.app/Contents/MacOS/fetch-ebook-metadata"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrf2lrs"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrfviewer"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrs2lrf"
  binary "#{appdir}/calibre.app/Contents/MacOS/markdown-calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/web2disk"

  zap trash: [
               '~/Library/Caches/calibre',
               '~/Library/Preferences/calibre',
               '~/Library/Preferences/net.kovidgoyal.calibre.plist',
               '~/Library/Saved Application State/com.calibre-ebook.ebook-viewer.savedState',
               '~/Library/Saved Application State/net.kovidgoyal.calibre.savedState',
             ]
end
