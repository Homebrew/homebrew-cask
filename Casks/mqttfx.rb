cask 'mqttfx' do
  version '1.5.1'
  sha256 '7a6b75862f3d77afaf5195d5a34fa49be7c65817a0c08fbdeac5929b12e95fd5'

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
