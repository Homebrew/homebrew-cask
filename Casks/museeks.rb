cask 'museeks' do
  version '0.8.1'
  sha256 '9911b286039acf41c8c896ab40e06513a2af943843530a4bfc6b46b61fdda02c'

  # github.com/KeitIG/museeks was verified as official when first introduced to the cask
  url "https://github.com/KeitIG/museeks/releases/download/#{version}/museeks-darwin-x64.zip"
  appcast 'https://github.com/KeitIG/museeks/releases.atom',
          checkpoint: 'b665ed884240a10c70c82c499ab38d549267f6425a69d527a569cf4ad70cf8ca'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'museeks-darwin-x64/Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
