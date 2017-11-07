cask 'linear' do
  version '1.3.0'
  sha256 'f93d9115e5173375b529c836cf6727936f40cd364b12314c42dc80564444ca10'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          checkpoint: '619cb997369fe4ab9ab93026dbd7d19470fee853398a57cbfa56d462aaf05a4c'
  name 'Linear'
  homepage 'http://linear.theuxshop.com/'

  app 'linear.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.linear.sfl',
                '~/Library/Caches/linear',
                '~/Library/Saved Application State/com.electron.linear.savedState',
              ],
      trash:  [
                '~/.linear',
                '~/Library/Application Support/linear',
                '~/Library/Preferences/com.electron.linear.plist',
              ]
end
