cask 'linear' do
  version '1.3.0'
  sha256 'f93d9115e5173375b529c836cf6727936f40cd364b12314c42dc80564444ca10'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          checkpoint: '5dff0089adc2d1dd2a8c8617f4b87587ed306c4e3fd8beb87549e37bbc51305e'
  name 'Linear'
  homepage 'https://mikaa123.github.io/linear-website/'

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
