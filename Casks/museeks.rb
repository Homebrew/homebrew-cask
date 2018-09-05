cask 'museeks' do
  version '0.10.0'
  sha256 '43563b9895c604ee07a51bb1d8cf90a6588ff6d98baf2d4f209351d0da910ee0'

  # github.com/KeitIG/museeks was verified as official when first introduced to the cask
  url "https://github.com/KeitIG/museeks/releases/download/#{version}/museeks.dmg"
  appcast 'https://github.com/KeitIG/museeks/releases.atom'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
