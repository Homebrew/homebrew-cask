cask 'arduino' do
  version '1.8.4'
  sha256 'b6cab054eb58d17213d7467bcee0256c0661b4c2befd8ca1dc3b319a65050b17'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: '01096ced1b85f8db8bb970adeb37f815c31e3f36a73af31d03ab58af98b514c4'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
