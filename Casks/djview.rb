cask 'djview' do
  version '4.10.6'
  sha256 '46b6042e9414e800d651d7dd484126737d379a7a4a79137a81a142cb35d5e5d0'

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.27%2BDjView-#{version}-qt57b-intel64.dmg"
  appcast 'https://sourceforge.net/projects/djvu/rss',
          checkpoint: '5ad7e42269fd45af3efb843e42b2cebef42f145e26c1a99c09f8a6af41b3861f'
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'

  app 'DjView.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl',
                '~/Library/Preferences/org.djvu.DjView.plist',
                '~/Library/Saved Application State/org.djvu.DjView.savedState',
              ]
end
