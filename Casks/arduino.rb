cask 'arduino' do
  version '1.8.10'
  sha256 '086faa08935a4d1056cdc6608feb0979abfbf1ec97775fa2b1809053615e5f65'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://github.com/arduino/Arduino/releases.atom'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary 'Arduino.app/Contents/Java/arduino-builder'

  zap trash: [
               '~/Library/Arduino15',
               '~/Library/Preferences/cc.arduino.Arduino.plist',
             ]

  caveats do
    depends_on_java
  end
end
