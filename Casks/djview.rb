cask 'djview' do
  version '4.10.5'
  sha256 'c33178d5ae44a6f43fc878ff458735cd7c825ea56b4a9d589748766184f09cee'

  url "https://downloads.sourceforge.net/sourceforge/djvu/DjVuLibre-3.5.27%2BDjView-#{version}-intel64.dmg"
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'
  license :gpl

  app 'DjView.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl',
                '~/Library/Preferences/org.djvu.DjView.plist',
                '~/Library/Saved Application State/org.djvu.DjView.savedState',
              ]
end
