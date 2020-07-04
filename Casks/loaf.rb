cask 'loaf' do
  version '1.0.2'
  sha256 'f4581b2bdb6050244cbbc9ad150db5d46cf654c6bd4c24980889d5f8a7b8cf7a'

  # github.com/philipardeljan/getloaf/ was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg"
  appcast 'https://github.com/philipardeljan/getmotion/releases.atom'
  name 'Loaf'
  homepage 'https://www.getmotion.io/'

  app 'Loaf.app'

  zap trash: [
               '~/Library/Application Support/Motion (beta)',
               '~/Library/Preferences/com.motionicons.studio.plist',
             ]
end
