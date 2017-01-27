cask 'calibre' do
  if MacOS.version <= :lion
    version '1.48.0'
    sha256 '0533283965fbc9a6618d0b27c85bdf3671fe75ff0e89eeff406fe1457ee61b14'
  else
    version '2.78.0'
    sha256 '79ee657bcfa5d0ba1bf02a442f82828cd4f1c0d3723b3a5d7ba3f9309370dcb0'
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom',
            checkpoint: '37a97dbd35c2209db55240f6995759e400c8c697c998a6c4d60a41d6eecec5e8'
  end

  url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  name 'calibre'
  homepage 'https://calibre-ebook.com/'

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

  zap delete: [
                '~/Library/Preferences/net.kovidgoyal.calibre.plist',
                '~/Library/Preferences/calibre',
                '~/Library/Caches/calibre',
              ]
end
