cask 'stellarium' do
  version '0.18.3'
  sha256 'ed9a7e67301202e0268a2b9f52aa27fd950ff484ac49eb6565c6c627984399b8'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :yosemite'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
