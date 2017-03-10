cask 'calibre' do
  if MacOS.version <= :lion
    version '1.48.0'
    sha256 '0533283965fbc9a6618d0b27c85bdf3671fe75ff0e89eeff406fe1457ee61b14'
  else
    version '2.81.0'
    sha256 '2f0ec4631f85be10255ded26a4fa51cfcb5fbbea888969ff55afbf37d41f8b57'
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom',
            checkpoint: '92992da0ac7c89f5e07fc0ae04a9a01e95342fb63c0388c5853641b0764401fe'
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
