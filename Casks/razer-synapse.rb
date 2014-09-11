class RazerSynapse < Cask
  version '2.0 v1.25'
  sha256 'e0f2f3504c40147982dadf41a33d5606fce083ce36f63bae0cebf360fbc7ea22'

  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.25.dmg'
  homepage 'http://www.razerzone.com/synapse2'

  pkg 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
