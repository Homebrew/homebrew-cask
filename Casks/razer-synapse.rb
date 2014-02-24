class RazerSynapse < Cask
  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.20.dmg'
  homepage 'http://www.razerzone.com/synapse2'
  version '2.0 v1.20'
  sha256 '059322a7c4fdb99a8fae3338f0dc5d36be79a6d07ce637d29524c19678bb9cc8'
  install 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
