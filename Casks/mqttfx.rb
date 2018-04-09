cask 'mqttfx' do
  version '1.7.0'
  sha256 'b0f3c044ed695d270f46b805a634047faa3540bfa39e35492435aff746905a6f'

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
