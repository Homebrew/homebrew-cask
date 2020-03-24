cask 'motion' do
  version '0.3.0'
  sha256 'e48718d7fcc5dc0982d0aec5828ce07d19d57eb47a2322c31c5b31a3441cd118'

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
