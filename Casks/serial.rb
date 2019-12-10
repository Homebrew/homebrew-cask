cask 'serial' do
  version '1.4.2'
  sha256 'df673dd10c4719d93fc6d41a56cc610078fb0aafb6d2628aaf92aed883af47c5'

  url "https://www.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.serial.direct'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
