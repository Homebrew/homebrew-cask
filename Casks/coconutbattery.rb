cask 'coconutbattery' do
  if MacOS.release <= :tiger
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.release <= :snow_leopard
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.3.1'
    sha256 '8eed5b5ae5b8aad993e152fd69c23d1617590eb705b66576b33fc2d252c99a15'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml',
            checkpoint: 'd15fe1f11c580ed4820cb60bf16adbc2c2e5fc45c3b6190fc41566198f1931aa'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'
  license :bsd

  app 'coconutBattery.app'

  zap delete: [
                '~/Library/Application Support/coconutBattery',
                '~/Library/Caches/com.coconut-flavour.coconutBattery',
                '~/Library/Preferences/com.coconut-flavour.coconutBattery.plist',
                '~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState',
              ]
end
