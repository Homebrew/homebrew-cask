cask :v1 => 'coconutbattery' do

  if MacOS.release <= :tiger
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.release <= :snow_leopard
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.2'
    sha256 'aaef17e76819cae5042d3363d51753a0511779bfa7f58302958f85e0efc5adca'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.gsub('.','_')}.zip"
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml',
            :sha256 => 'a95480443b9b1161ce66fea8649507ba5449f82e8eb83d89db090df7c03fbb1f'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'
  license :bsd

  app 'coconutBattery.app'
end
