cask 'mqttfx' do
  version '1.0.0'
  sha256 'ffa6d389c5e39e9ce2613598d0ab9e1c187a374889c21f188dbef7aeda9c5177'

  # jensd.de/apps/mqttfx was verified as official when first introduced to the cask
  url "http://www.jensd.de/apps/mqttfx/#{version}/MQTT.fx-#{version}.dmg"
  name 'MQTT.fx'
  homepage 'http://mqttfx.jfx4ee.org/'
  license :apache

  app 'MQTT.fx.app'
end
