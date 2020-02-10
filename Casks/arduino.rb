cask 'arduino' do
  version '1.8.11'
  sha256 'e5a7b67fb8007063601751ca9cb7af7ad1f52c24f123a96137167cc8229164fe'

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

  caveats do
    depends_on_java
  end
end
