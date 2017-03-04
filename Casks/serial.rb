cask 'serial' do
  version '1.2.5'
  sha256 '03b4c375d27a5f1a60601f6c6d29fff03c131f2f1d7b04b8d6f8cd2fb625c892'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
