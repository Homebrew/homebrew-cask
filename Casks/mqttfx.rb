cask 'mqttfx' do
  version '1.4.1'
  sha256 'e9b16f46c3b8ae0d9da9c7944cd5abc3b4b47ef29c3885e278c5a4289bd755df'

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
