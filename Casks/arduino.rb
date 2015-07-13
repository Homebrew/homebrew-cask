cask :v1 => 'arduino' do
  version '1.6.5'
  sha256 '945e65c86f476cb7f7f2d6c77b37d527ed654723aaa10d64e791a93f0568ab4b'

  url "http://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
