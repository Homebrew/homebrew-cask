cask 'loaf' do
  version '1.0.0'
  sha256 '7810d390d6c0587faa5a326ab43c19b54b12d9ff216a2613ae05e573745eb646'

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
