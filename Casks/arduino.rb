cask 'arduino' do
  version '1.8.1'
  sha256 '78e72a43e6228d8e9e6d0998fbfc16b1718fbfc0c76baf0ab57e3a78eef71628'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'bd0f51fb604bbbcddfc893b0631c2f5ec85c1477dd245bef7c0b6db042946153'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
