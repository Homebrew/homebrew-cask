class RazerSynapse < Cask
  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.20.dmg'
  homepage 'http://www.razerzone.com/synapse2'
  version '2.0 v1.20'
  sha1 '2489c7ff555a0db200ed0bd111c62ee7fd213e33'
  install 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
