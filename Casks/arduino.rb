cask :v1 => 'arduino' do
  version '1.0.6'
  sha256 '11838fe58cd366561cb1868378269da959bf67518cc2b88eee3f010c9c1c072d'

  url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
