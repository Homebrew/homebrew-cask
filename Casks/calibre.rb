cask 'calibre' do
  version '3.25.0'
  sha256 '06eb7af10121c7fa8dc7ae89b3b4a4119202a696b9f1b85bc939bdb9166090de'

  url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom',
          checkpoint: '0a4d9448ef251524c9a3d71c12a27bf8617a3e7872572129461b88815db0a48d'
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
