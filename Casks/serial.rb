cask 'serial' do
  version '2.0.1'
  sha256 '29e7cfe00eea9eb62453dad84c2ed802f783b92bfb1505a0c0ec5140c87dabf5'

  url "https://download.decisivetactics.com/downloads/serial/Serial_#{version}.zip"
  appcast 'https://api.decisivetactics.com/api/v1/public/appcast?app=serial'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
