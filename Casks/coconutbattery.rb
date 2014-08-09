class Coconutbattery < Cask
  if MacOS.version < :leopard
    url 'http://www.coconut-flavour.com/downloads/coconutBattery_2.6.6.zip'
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
  elsif MacOS.version < :lion
    url 'http://www.coconut-flavour.com/downloads/coconutBattery_2.8.zip'
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
  else
    url 'http://www.coconut-flavour.com/downloads/coconutBattery_3_1.zip'
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml'
    version '3.1'
    sha256 'fee4c3e0ccc9c6ea1acc0dc7b3191ff6bf727df03cb9cb269a9347cd0e931618'
  end
  homepage 'http://www.coconut-flavour.com/coconutbattery/'
  link 'coconutBattery.app'
end
