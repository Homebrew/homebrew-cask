cask 'razer-synapse' do
  version '1.45'
  sha256 '4b4368bf5f90cb94667a60a120d49b9073329ba6d9efcd4f5108cf709bfe8115'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://razerdrivers.s3.amazonaws.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'https://www.razerzone.com/synapse/'
  license :gratis

  depends_on :macos => '>= :lion'

  pkg 'Razer Synapse.pkg'

  uninstall :script    => '/Applications/Utilities/Uninstall Razer Synapse.app/Contents/MacOS/Uninstall Razer Synapse',
            :pkgutil   => 'com.razerzone.*',
            :quit      => [
                            'com.razerzone.RzUpdater',
                            'com.razerzone.rzdeviceengine',
                          ],
            :launchctl => [
                            'com.razer.rzupdater',
                            'com.razerzone.rzdeviceengine',
                          ]

  zap :delete => [
                   '~/Library/Preferenecs/com.razer.*',
                   '~/Library/Preferenecs/com.razerzone.*',
                 ]

  caveats do
    reboot
  end
end
