cask 'arduino' do
  version '1.6.7'
  sha256 '20d6ecdd068930d3e74ef5de6ec3115e57b9ad7183fbee51b0d42e52cd5df5aa'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
end
