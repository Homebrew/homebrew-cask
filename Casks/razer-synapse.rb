cask 'razer-synapse' do
  version '1.52'
  sha256 'cf2ce410915a0c16d7e85e4047c6c60512539b2b15e8cb3929f8da5a79ff622f'

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
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
