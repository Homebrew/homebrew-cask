cask 'djview' do
  version '4.10.6'
  sha256 '9b98acbd420eb10b3020b5d6e4ce144fe214461103a263c1d900f61797e92ef8'

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.27%2BDjView-#{version}-intel64.dmg"
  appcast 'https://sourceforge.net/projects/djvu/rss',
          checkpoint: 'cf1aa92be5131c0e7c88841c5d3102a60f9d2ee4e6bb2cf6c858afa273068339'
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'

  app 'DjView.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl',
                '~/Library/Preferences/org.djvu.DjView.plist',
                '~/Library/Saved Application State/org.djvu.DjView.savedState',
              ]
end
