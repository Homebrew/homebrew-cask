cask 'stellarium' do
  version '0.19.2'
  sha256 'e64f8c73aa9db7734db1b419cc002ccbfa6650e4af6f6a1625fd2874ece474cb'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :yosemite'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
