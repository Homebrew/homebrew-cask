cask 'arduino' do
  version '1.6.8'
  sha256 '81d4866b1bbb49156796f75f1b242251a923625154bd86178b0fde55a58d6c48'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :gpl

  app 'Arduino.app'
  binary 'Arduino.app/Contents/Java/arduino-builder'

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
