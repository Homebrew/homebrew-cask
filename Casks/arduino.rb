cask 'arduino' do
  version '1.8.9'
  sha256 '7868dd8f6d350956b4d0c7e3d443f717209244a2dc3f374da115d5252a45bf56'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  zap trash: [
               '~/Library/Arduino15',
               '~/Library/Preferences/cc.arduino.Arduino.plist',
             ]

  caveats do
    depends_on_java
  end
end
