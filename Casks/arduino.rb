cask 'arduino' do
  version '1.8.6'
  sha256 'ee8e6cca7a24521d08f2b2e79f9313f5c25a5e5c9a5f9c1fe693ead43628f0d5'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
