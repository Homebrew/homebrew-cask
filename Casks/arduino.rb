cask 'arduino' do
  version '1.8.1'
  sha256 '78e72a43e6228d8e9e6d0998fbfc16b1718fbfc0c76baf0ab57e3a78eef71628'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'a6d360e6cbcb04ed3766fa56c3d7da932650d074e4e2432923b4382691465be2'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
