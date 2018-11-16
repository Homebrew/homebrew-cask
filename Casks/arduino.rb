cask 'arduino' do
  version '1.8.7'
  sha256 'bc5fae3e0b54f000d335d93f2e6da66fc8549def015e3b136d34a10e171c1501'

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
