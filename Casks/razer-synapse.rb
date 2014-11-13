cask :v1 => 'razer-synapse' do
  version '1.29'
  sha256 'c37266bb55df1f0344d797419ff10e498bbbb90cdf15b769487e245728f2eb43'

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v#{version}.dmg"
  homepage 'http://www.razerzone.com/synapse/'
  license :unknown

  pkg 'Razer Synapse 2.0.pkg'
  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse 2.0.app/Contents/MacOS/Uninstall Razer Synapse 2.0',
            :pkgutil => 'com.razerzone.*'
end
