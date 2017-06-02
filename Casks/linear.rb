cask 'linear' do
  version '1.3.0'
  sha256 'f93d9115e5173375b529c836cf6727936f40cd364b12314c42dc80564444ca10'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          checkpoint: 'a1c7e5f02188f3d28e8c90e4514e28de280564d50a85b20007969af076739ad6'
  name 'Linear'
  homepage 'http://linear.theuxshop.com/'

  app 'linear.app'

  zap delete: [
                '~/.linear',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.linear.sfl',
                '~/Library/Application Support/linear',
                '~/Library/Caches/linear',
                '~/Library/Preferences/com.electron.linear.plist',
                '~/Library/Saved Application State/com.electron.linear.savedState',
              ]
end
