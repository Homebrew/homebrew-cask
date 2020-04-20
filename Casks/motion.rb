cask 'motion' do
  version '0.4.0'
  sha256 '58e7ce2612a4d604f9b96a2f7e84d4aeba4efeeab3ab76e32436d7b178705bf0'

  # github.com/philipardeljan/getmotion/ was verified as official when first introduced to the cask
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
