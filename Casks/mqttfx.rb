cask 'mqttfx' do
  version '1.5.0'
  sha256 '894708779e1db41a7cd8f26d9e3d0776558921be1c10dba6a32f46df5b41e2f9'

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
