cask 'museeks' do
  version '0.11.0'
  sha256 'bf818f8c15416bb66122fe7e902224e81501b830b2a4446ed86a6e493350fc3a'

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
