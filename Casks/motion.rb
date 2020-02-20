cask 'motion' do
  version '0.2.0'
  sha256 'aeacea38834000396f58a92b21f7175ba57863e6aca6b2870654056eb27f0e2c'

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
