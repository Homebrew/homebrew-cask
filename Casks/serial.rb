cask 'serial' do
  version '1.4.1'
  sha256 '95588873ceacc2d6fb43dfa1192dedb5def090060ab688d052c03bf3bb4fa4da'

  url "https://www.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.serial.direct'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
