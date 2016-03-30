cask 'razer-synapse' do
  version '1.47'
  sha256 'ff3aa8914ad6419a7c37bfe872b01b237d62eb5a1594a36001ec94652845d839'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://razerdrivers.s3.amazonaws.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'https://www.razerzone.com/synapse/'
  license :gratis

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
