cask 'serial' do
  version '1.4'
  sha256 '30d7eae54d6baa44d7c0dd7b59a8e5ea7eac1bfe4d482244ad7179b6823716d6'

  url "https://www.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.serial.direct'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
