cask 'mqttfx' do
  version '1.4.2'
  sha256 'c1805128ee4cea11edd0b26535aaa15529d3246e3d804cc1642fe1e4e22406e6'

  # jensd.de/apps/mqttfx was verified as official when first introduced to the cask
  url "http://www.jensd.de/apps/mqttfx/#{version}/mqttfx-#{version}-macos.dmg"
  name 'MQTT.fx'
  homepage 'http://www.mqttfx.org/'

  installer script: {
                      executable: 'MQTT.fx Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       %w[-q],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/MQTT.fx.app'

  zap delete: [
                '~/Library/Application Support/MQTT-FX',
                '~/Library/Application Support/MQTT.fx',
              ]
end
