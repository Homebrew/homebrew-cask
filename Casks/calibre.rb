cask 'calibre' do
  version '3.23.0'
  sha256 'a631eea54d8c041424a2add4f889973c433541bac4d540e0b105501a88d9767e'

  url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom',
          checkpoint: '85ac7c5fab2ab21a1b8126b24867a760e0c780cb7d4d0ec9be0157a6f12492f6'
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
