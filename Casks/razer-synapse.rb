class RazerSynapse < Cask
  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.21.dmg'
  homepage 'http://www.razerzone.com/synapse2'
  version '2.0 v1.21'
  sha256 '2a102f2c2a2c724ad4ac7b666d6594ae7ec123126d51803bdf15ce1eab0964cd'
  install 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
