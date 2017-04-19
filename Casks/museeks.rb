cask 'museeks' do
  version '0.8.1'
  sha256 '9911b286039acf41c8c896ab40e06513a2af943843530a4bfc6b46b61fdda02c'

  # github.com/KeitIG/museeks was verified as official when first introduced to the cask
  url "https://github.com/KeitIG/museeks/releases/download/#{version}/museeks-darwin-x64.zip"
  appcast 'https://github.com/KeitIG/museeks/releases.atom',
          checkpoint: '0cd40c2b626a8d818343d03ce14471d33d04f0891f67486e853d1f66a013a455'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'museeks-darwin-x64/Museeks.app'

  zap delete: [
                '~/Library/Application Support/museeks',
                '~/Library/Saved Application State/com.electron.museeks.savedState',
              ]
end
