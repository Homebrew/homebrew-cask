cask 'arduino' do
  version '1.6.13'
  sha256 '38eb07af336ab0224712017e5cbf316b7ffb3a2adb319a6d37810ce79ed56916'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'd597f3628e775a229c0314707c12ac58cbac90508bb01d710ae1a43ef742de58'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
