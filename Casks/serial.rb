cask 'serial' do
  version '1.3.7'
  sha256 '49742a64afe51348ac049c4d527cd685e85d00a63d4866467bd12152fb845588'

  url "https://www.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
