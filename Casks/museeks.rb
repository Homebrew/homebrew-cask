cask 'museeks' do
  version '0.11.2'
  sha256 '51b68a6a78ada4c723ce2f3483cbb94e5656950a4e399aae2d5dc4e9cb64aeea'

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
