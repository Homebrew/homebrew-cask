cask :v1 => 'arduino' do
  version '1.6.2'
  sha256 '7b8ca0a51032c08da53e232bbfb14dd29531fe6cf7620aaf65f93c5e51dc27d6'

  url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
