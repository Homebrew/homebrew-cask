cask 'arduino' do
  version '1.6.12'
  sha256 '5289e7a3284ae326f43f0d6bab48b9775b8ed8d2486193accff2f38937dd0e8a'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
    files_in_usr_local
  end
end
