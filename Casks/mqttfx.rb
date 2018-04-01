cask 'mqttfx' do
  version '1.6.0'
  sha256 'c9644ff3f34e65d3ec44fae2afdc91572e956b7e0967f61ce1a4f38b548d708f'

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
