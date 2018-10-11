cask 'serial' do
  version '1.3.9'
  sha256 'fb029f58a45d59bc6bf99ca2fd6d75a62b017840e7d28f63432fe8379a19421d'

  url "https://www.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
