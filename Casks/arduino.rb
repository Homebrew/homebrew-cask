cask 'arduino' do
  version '1.8.1'
  sha256 '78e72a43e6228d8e9e6d0998fbfc16b1718fbfc0c76baf0ab57e3a78eef71628'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'd50e794a44510130bfd4e08857a61bcbb338998aac7e564aa41c08ce7a44981e'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
