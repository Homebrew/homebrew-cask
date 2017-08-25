cask 'coconutbattery' do
  if MacOS.version <= :mavericks
    version '3.3.4'
    sha256 '0edf6bdaf28fb3cc9c242fd916c348fbbae30a5356ddc1d6e5158d50f96d740d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
  else
    version '3.6.3'
    sha256 '4b1310e181de146b1de6cfb34cc9a98957da79f57bf48ccc178d51efd3eb2d73'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
    appcast 'https://coconut-flavour.com/updates/coconutBattery.xml',
            checkpoint: '371d430555c9a88ed07f59e669b2a9a244b26a44427fce607494ea2374891358'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'

  app 'coconutBattery.app'

  zap delete: [
                '~/Library/Application Support/coconutBattery',
                '~/Library/Caches/com.coconut-flavour.coconutBattery',
                '~/Library/Preferences/com.coconut-flavour.coconutBattery.plist',
                '~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState',
              ]
end
