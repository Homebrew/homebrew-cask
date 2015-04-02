cask :v1 => 'arduino' do
  version '1.6.3'
  sha256 '4cdb3332ff9a80218e6923db61ca18e346e753e137f111de9fe81b380af88897'

  url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
