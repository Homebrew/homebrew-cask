cask 'stellarium' do
  version '0.19.3'
  sha256 '58e649ddbefdf13cbb56af6a195a29620e15d2be3e1dc9431da541123b51c853'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :sierra'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
