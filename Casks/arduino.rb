cask 'arduino' do
  version '1.6.10'
  sha256 '97fa30fe736f87ed1ab2f53c8a701e50c05f8a5bc825a04c698fd06f89bc02bc'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
