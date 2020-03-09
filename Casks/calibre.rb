cask 'calibre' do
  if MacOS.version <= :high_sierra
    version '3.48.0'
    sha256 '68829cd902b8e0b2b7d5cf7be132df37bcc274a1e5720b4605d2dd95f3a29168'
    url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  else
    version '4.12.0'
    sha256 'd4e941735408f72af4870eb95a1c9ae03fccab1e3e7776bd2969b4a3646e7394'
    url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  end

  name 'calibre'
  homepage 'https://calibre-ebook.com/'

  app 'calibre.app'
  binary 'calibre.app/Contents/MacOS/calibre'
  binary 'calibre.app/Contents/MacOS/calibre-complete'
  binary 'calibre.app/Contents/MacOS/calibre-customize'
  binary 'calibre.app/Contents/MacOS/calibre-debug'
  binary 'calibre.app/Contents/MacOS/calibre-parallel'
  binary 'calibre.app/Contents/MacOS/calibre-server'
  binary 'calibre.app/Contents/MacOS/calibre-smtp'
  binary 'calibre.app/Contents/MacOS/calibredb'
  binary 'calibre.app/Contents/MacOS/ebook-convert'
  binary 'calibre.app/Contents/MacOS/ebook-device'
  binary 'calibre.app/Contents/MacOS/ebook-edit'
  binary 'calibre.app/Contents/MacOS/ebook-meta'
  binary 'calibre.app/Contents/MacOS/ebook-polish'
  binary 'calibre.app/Contents/MacOS/ebook-viewer'
  binary 'calibre.app/Contents/MacOS/fetch-ebook-metadata'
  binary 'calibre.app/Contents/MacOS/lrf2lrs'
  binary 'calibre.app/Contents/MacOS/lrfviewer'
  binary 'calibre.app/Contents/MacOS/lrs2lrf'
  binary 'calibre.app/Contents/MacOS/markdown-calibre'
  binary 'calibre.app/Contents/MacOS/web2disk'

  zap trash: [
               '~/Library/Caches/calibre',
               '~/Library/Preferences/calibre',
               '~/Library/Preferences/net.kovidgoyal.calibre.plist',
               '~/Library/Saved Application State/com.calibre-ebook.ebook-viewer.savedState',
               '~/Library/Saved Application State/net.kovidgoyal.calibre.savedState',
             ]
end
