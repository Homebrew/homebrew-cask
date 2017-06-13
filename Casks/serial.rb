cask 'serial' do
  version '1.3.2'
  sha256 '7af8a6662699c76e6646e662701e5b5ec88dd3ec12c0fc08087ad854ee3f78a2'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
