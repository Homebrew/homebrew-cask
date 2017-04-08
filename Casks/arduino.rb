cask 'arduino' do
  version '1.8.2'
  sha256 'edb3a2d6a479bb0557686c0bf6c8fdf85ff9dccf3cdebc32578092240f09f4c3'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'ceca15e13a1da1c071e4b57b5425cd77897e13e82f250ed4a6f029427728a0a8'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
