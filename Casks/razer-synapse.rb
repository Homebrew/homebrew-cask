cask :v1 => 'razer-synapse' do
  version '1.41'
  sha256 'f8fce465114da56f6d5f0771429b1f118ac547c77b9b05d3f84333f8d94b5019'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://razerdrivers.s3.amazonaws.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'http://www.razerzone.com/synapse/'
  license :gratis

  pkg 'Razer Synapse.pkg'

  depends_on :macos => '>= :lion'

  uninstall :script => '/Applications/Utilities/Uninstall Razer Synapse.app/Contents/MacOS/Uninstall Razer Synapse',
            :pkgutil => 'com.razerzone.*'
end
