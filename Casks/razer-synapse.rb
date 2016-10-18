cask 'razer-synapse' do
  version '1.59'
  sha256 '48d7c1fdc7a272c8ae62a4f940f8dd8e127f4117cb391c7ba3954269b33e0907'

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'https://www.razerzone.com/synapse/'

  depends_on macos: '>= :lion'

  pkg 'Razer Synapse.pkg'

  uninstall script:    '/Applications/Utilities/Uninstall Razer Synapse.app/Contents/MacOS/Uninstall Razer Synapse',
            pkgutil:   'com.razerzone.*',
            quit:      [
                         'com.razerzone.RzUpdater',
                         'com.razerzone.rzdeviceengine',
                       ],
            launchctl: [
                         'com.razer.rzupdater',
                         'com.razerzone.rzdeviceengine',
                       ]

  zap delete: [
                '~/Library/Preferenecs/com.razer.*',
                '~/Library/Preferenecs/com.razerzone.*',
              ]

  caveats do
    reboot
  end
end
