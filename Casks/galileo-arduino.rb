cask 'galileo-arduino' do
  version '1.8.5'
  sha256 '49d0a255802167fc7644f4cc5b3d8b41c94859343c0c4d1f90816f18b11f3fd9'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Intel Galileo Arduino SW'
  homepage 'https://www.arduino.cc/'

  depends_on macos: '>= :lion'

  app 'Arduino.app'
end
