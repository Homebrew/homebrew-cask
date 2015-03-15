cask :v1 => 'arduino' do
  version '1.6.1'
  sha256 'c84734a1d5b76641e12484be7a1a99c006173d939c730fd04085faa02323e7af'

  url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
