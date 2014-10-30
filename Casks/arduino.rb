class Arduino < Cask
  version '1.0.6'
  sha256 '11838fe58cd366561cb1868378269da959bf67518cc2b88eee3f010c9c1c072d'

  url "http://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
