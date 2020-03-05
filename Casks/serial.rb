cask 'serial' do
  version '2.0'
  sha256 '05f3a92f60e8eec7c412557d71785ae67c1ea315d2279cf0163d0f5ceaa5a291'

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast 'https://api.decisivetactics.com/api/v1/public/appcast?app=serial'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
