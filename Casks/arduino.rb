cask 'arduino' do
  version '1.6.9'
  sha256 'decf316e2bf27f8d839b386845852e94a8cbbfeffbe1e8a8afea96f651ac55fc'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
  binary 'Arduino.app/Contents/Java/arduino-builder'

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
