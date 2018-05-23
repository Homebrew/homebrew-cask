cask 'arduino' do
  version '1.8.5'
  sha256 '49d0a255802167fc7644f4cc5b3d8b41c94859343c0c4d1f90816f18b11f3fd9'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: '8d819ee505a981d873ea7e2858007cf6941bdec4b76e63eacbfae9dd16372da4'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
