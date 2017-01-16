cask 'arduino' do
  version '1.8.0'
  sha256 '1fb63c266d8eb89cd0690b2e2d9ae18f1d0106c461c03b0d6fc1cdb006e39ba9'

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
