cask 'museeks' do
  version '0.11.1'
  sha256 '78af4edb2b393176aa60577e6e5858bd25f5db0c0bda70a2695c8869644a4dd8'

  # github.com/martpie/museeks was verified as official when first introduced to the cask
  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks.dmg"
  appcast 'https://github.com/martpie/museeks/releases.atom'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
