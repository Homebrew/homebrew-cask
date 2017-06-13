cask 'djview' do
  version '4.10.6'
  sha256 '46b6042e9414e800d651d7dd484126737d379a7a4a79137a81a142cb35d5e5d0'

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.27%2BDjView-#{version}-qt57b-intel64.dmg"
  appcast 'https://sourceforge.net/projects/djvu/rss',
          checkpoint: 'aeacee2c4f4de38de4aad7d682d2728a3b10153c943f386e30b0621879efd920'
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'

  app 'DjView.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl',
                '~/Library/Preferences/org.djvu.DjView.plist',
                '~/Library/Saved Application State/org.djvu.DjView.savedState',
              ]
end
