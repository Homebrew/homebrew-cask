cask 'mqttfx' do
  version '1.1.0'
  sha256 'd5e05708e6ac5c4884cac9e36828352ded4cce5d87a1cbf093ee19af7e44f95c'

  # jensd.de/apps/mqttfx was verified as official when first introduced to the cask
  url "http://www.jensd.de/apps/mqttfx/#{version}/MQTT.fx-#{version}.dmg"
  name 'MQTT.fx'
  homepage 'http://mqttfx.jfx4ee.org/'

  app 'MQTT.fx.app'
end
