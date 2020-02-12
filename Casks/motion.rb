cask 'motion' do
  version '0.0.23'
  sha256 'e9deb7f673aa5378b934e2365c0bbee3414a9fe25916a159756e19baf07ab38a'

  # github.com/philipardeljan/getmotion was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getmotion/releases/download/v#{version}/motion.dmg"
  appcast 'https://github.com/philipardeljan/getmotion/releases.atom'
  name 'Motion'
  homepage 'https://www.getmotion.io/'

  app 'Motion.app'

  zap trash: [
               '~/Library/Application Support/Motion (beta)',
               '~/Library/Preferences/com.motionicons.studio.plist',
             ]
end
