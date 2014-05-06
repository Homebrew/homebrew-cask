class RazerSynapse < Cask
  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.24.dmg'
  homepage 'http://www.razerzone.com/synapse2'
  version '2.0 v1.24'
  sha256 '1db4c1ea6428a5d8ea7823c05fa1e48d51424a7b8b665611e6efa81d32d39a6d'
  install 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
