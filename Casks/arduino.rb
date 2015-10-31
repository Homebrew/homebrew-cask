cask :v1 => 'arduino' do
  version '1.6.5-r5'
  sha256 'aab6fe813502dddcd87790476f36dd4ba7419e8e5dcf8ef401f41c12e43d0734'

  url "http://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
end
