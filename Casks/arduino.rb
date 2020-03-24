cask 'arduino' do
  version '1.8.12'
  sha256 '00832eb03db6e90c16637a8c3f2210adbce017d80f71a44f01035d147c693e7a'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://github.com/arduino/Arduino/releases.atom'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  zap trash: [
               '~/Library/Arduino15',
               '~/Library/Preferences/cc.arduino.Arduino.plist',
             ]
end
