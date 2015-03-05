cask :v1 => 'arduino' do
  version '1.6.0'
  sha256 '7e07e3359fc3c8c2d087172bba95ca6098481b4ce8410562ccd95f733f3cabcf'

  url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
