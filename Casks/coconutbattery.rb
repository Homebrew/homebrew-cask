cask :v1 => 'coconutbattery' do

  if MacOS.version <= :tiger
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
    url "http://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.version <= :snow_leopard
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
    url "http://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.1.2'
    sha256 'c055686223771c3a719f59518c46f18a4ca36d6e114700c6880394ce7e0e28ba'
    url "http://www.coconut-flavour.com/downloads/coconutBattery_#{version.gsub('.','_')}.zip"
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml',
            :sha256 => '37968aee16f6fb0a705d68bfa2418083dd9768a4b5477ce8ec6e6b74ef26704c'
  end

  homepage 'http://www.coconut-flavour.com/coconutbattery/'
  license :unknown    # todo: improve this machine-generated value

  app 'coconutBattery.app'
end
