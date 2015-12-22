cask 'arduino' do
  version '1.6.7'
  sha256 '9ad1a3096904c132e7a0817c9d7afc17a891ded3fb73a50ac1d5845d6a7d68a3'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
end
