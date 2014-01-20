class RazerSynapse < Cask
  url 'http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v1.18.dmg'
  homepage 'http://www.razerzone.com/synapse2'
  version '2.0 v1.18'
  sha1 '54ee4b77c21789dcd753cde334c75e72546402ce'
  install 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0'
end
