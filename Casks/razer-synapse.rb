cask :v1 => 'razer-synapse' do
  version '1.39'
  sha256 'ab13c1d13e8df6746eac7502ec52d0cbd29a9a2ddb2f256b2faa6ba35ab299f5'

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
