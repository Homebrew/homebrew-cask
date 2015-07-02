cask :v1 => 'razer-synapse' do
  version '1.40'
  sha256 '921591dddd4d1496c51586357fb599518feaebd0976ec77107a9539f52189b7d'

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
