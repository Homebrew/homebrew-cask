cask 'serial' do
  version '1.3.8'
  sha256 'f23de6aa96bc1847f740ac1b57bfbad27c15367156b54afd233b7ae2bb351ff1'

  url "https://www.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
