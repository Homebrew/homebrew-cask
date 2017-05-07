cask 'serial' do
  version '1.3.1'
  sha256 '2062f72115ba84fe107f6da71c99405355b0cd5557a940668048418938aa9ec5'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
