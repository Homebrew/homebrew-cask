class RazerSynapse < Cask
  version '1.26'
  sha256 '4b82742d34e9bdce82c405958cdb45b6f67b9ad778e0ec622b947e8c2c57d10e'

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v#{version}.dmg"
  homepage 'http://www.razerzone.com/synapse2'
  license :unknown

  pkg 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0',
            :pkgutil => 'com.razerzone.*'
end
