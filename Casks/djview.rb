cask 'djview' do
  version '4.10.6'
  sha256 '4585c41e9e856af702ab50ac345128e98aedc581d0d0c29ea8e7dac1ed0e7792'

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.27%2BDjView-#{version}-qt57-intel64.dmg"
  appcast 'https://sourceforge.net/projects/djvu/rss',
          checkpoint: '7cc16abf82300f400f18f9658f43280a5fc6c048797b0fba207b08ccb485202a'
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'

  app 'DjView.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl',
                '~/Library/Preferences/org.djvu.DjView.plist',
                '~/Library/Saved Application State/org.djvu.DjView.savedState',
              ]
end
