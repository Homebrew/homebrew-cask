cask 'arduino' do
  version '1.8.3'
  sha256 'ea1560f933240a3808d154f5a36981ffe1e8ae53398cca10a037b73aeb894666'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: '400491fb3bf101157604827e5ebac3c34b77798ac4af5836a2d45ffd7dc7013a'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
