class RazerSynapse < Cask
  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.19.dmg'
  homepage 'http://www.razerzone.com/synapse2'
  version '2.0 v1.19'
  sha1 '51cd93d9b2d212be65f3ae5de45905f4cbf060a6'
  install 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
