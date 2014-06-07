class Coconutbattery < Cask
  if MacOS.version == :lion or MacOS.version == :mountain_lion or MacOS.version == :mavericks
    url 'http://www.coconut-flavour.com/downloads/coconutBattery_3_0_1.zip'
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml'
    version '3.0.1'
    sha256 '8affd652b38060324aa11adf30b8e517e8e39166946dc7e08a0c88ee3756bef3'
  elsif MacOS.version == :leopard or MacOS.version == :snow_leopard
    url 'http://www.coconut-flavour.com/downloads/coconutBattery_2.8.zip'
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
  else
    url 'http://www.coconut-flavour.com/downloads/coconutBattery_2.6.6.zip'
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
  end
  homepage 'http://www.coconut-flavour.com/coconutbattery/'
  link 'coconutBattery.app'
end
