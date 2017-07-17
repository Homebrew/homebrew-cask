cask 'arduino' do
  version '1.8.3'
  sha256 'ea1560f933240a3808d154f5a36981ffe1e8ae53398cca10a037b73aeb894666'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'bae3b1c53d4610e5a3971936e48f57d539946c5960aa7eec339cf05cda7e7ddd'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
