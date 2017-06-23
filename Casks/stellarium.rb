cask 'stellarium' do
  version '0.16.0'
  sha256 'a7a0f6e3f570bafb347a15ce5df5dc3ff0ba27adb9b57890d36aa7075594fffb'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: '834ca4c21ab0922c59074f7d63536fee93d63c9ccbd20619caa004d1457ebb00'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
