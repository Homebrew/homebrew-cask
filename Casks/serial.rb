cask 'serial' do
  version '1.3.7'
  sha256 '49742a64afe51348ac049c4d527cd685e85d00a63d4866467bd12152fb845588'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes',
          checkpoint: '63c101da5c6693f95202bf5f82c7b6b265a0b579ee4fbb180c48714214341fcc'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
