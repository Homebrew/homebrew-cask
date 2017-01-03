cask 'mqttfx' do
  version '1.3.0'
  sha256 '96bb22596ac43ff79d0ef11324b36cc5d0668b506a5e89a367123cbf90cacc5d'

  # jensd.de/apps/mqttfx was verified as official when first introduced to the cask
  url "http://www.jensd.de/apps/mqttfx/#{version}/mqttfx-#{version}.dmg"
  name 'MQTT.fx'
  homepage 'http://mqttfx.jfx4ee.org/'

  app 'MQTT.fx.app'
end
