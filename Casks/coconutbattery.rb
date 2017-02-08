cask 'coconutbattery' do
  if MacOS.version <= :tiger
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.version <= :snow_leopard
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.version <= :yosemite
    version '3.3.4'
    sha256 '0edf6bdaf28fb3cc9c242fd916c348fbbae30a5356ddc1d6e5158d50f96d740d'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
  else
    version '3.5.1'
    sha256 '8cadc6a1c1c1bc4f5ee0ce32a83ac6b74670fbd2ede62a1945988463d4ba6d66'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml',
            checkpoint: 'eff17e7bae73d67211dd178f3f17d81b44e37d281313886ee7017a7c6b1c8c4c'
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
