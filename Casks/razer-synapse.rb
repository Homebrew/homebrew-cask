cask :v1 => 'razer-synapse' do
  version '1.35'
  sha256 '02cc7b873f9a4cdc681f38c87ee54600835ec1d765bff9c49aef866d7e52db08'

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_2.0_Mac_Driver_v#{version}.dmg"
  homepage 'http://www.razerzone.com/synapse/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Razer Synapse.pkg'

  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse.app/Contents/MacOS/Uninstall Razer Synapse',
            :pkgutil => 'com.razerzone.*'
end
