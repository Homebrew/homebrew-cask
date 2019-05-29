cask 'stellarium' do
  version '0.19.0'
  sha256 'a9d944f7990d4968a69779e2bfca98518f9419c02d8c6c64223af9872f62f0ff'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :yosemite'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
