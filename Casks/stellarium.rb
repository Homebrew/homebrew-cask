cask 'stellarium' do
  version '0.20.2'
  sha256 'b45c493d005682b86b9a0773052af549bf0fa32f9379199b01548d5a3d884b38'

  # github.com/Stellarium/stellarium/ was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.zip"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :sierra'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
