cask :v1 => 'arduino' do
  version '1.6.6'
  sha256 'c1b42311e654d83ebd2b7693beaab6d2cf24dfc3ad78db1a58c3713e6b49e210'

  url "http://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
end
