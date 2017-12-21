cask 'mqttfx' do
  version '1.5.2'
  sha256 '54b534b0136514238b372288faf66901551d76bc5cd405bbe943799de9500a1a'

  # jensd.de/apps/mqttfx was verified as official when first introduced to the cask
  url "http://www.jensd.de/apps/mqttfx/#{version}/mqttfx-#{version}-macos.dmg"
  name 'MQTT.fx'
  homepage 'http://www.mqttfx.org/'

  installer script: {
                      executable: 'MQTT.fx Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/MQTT.fx.app'

  zap trash: [
               '~/Library/Application Support/MQTT-FX',
               '~/Library/Application Support/MQTT.fx',
             ]
end
