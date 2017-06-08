cask 'coconutbattery' do
  if MacOS.version <= :mavericks
    version '3.3.4'
    sha256 '0edf6bdaf28fb3cc9c242fd916c348fbbae30a5356ddc1d6e5158d50f96d740d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
  else
    version '3.6.2'
    sha256 '56d9207b1edd9179692cdfba77dca0c1735759b20177dd0502bad75f44ef1dc8'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
    appcast 'https://coconut-flavour.com/updates/coconutBattery.xml',
            checkpoint: '4bd74dc4adfa63c4df95fb0c7e7c29875514f7a0be952ab9c845d11705d8896a'
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
