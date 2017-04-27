cask 'serial' do
  version '1.3'
  sha256 '51ffa68bd9976ea20946ed4a743534b5708212556a1189a940cd94b4be980a0a'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
