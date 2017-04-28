cask 'arduino' do
  version '1.8.2'
  sha256 'edb3a2d6a479bb0557686c0bf6c8fdf85ff9dccf3cdebc32578092240f09f4c3'

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast 'https://www.arduino.cc/en/Main/ReleaseNotes',
          checkpoint: 'fd200ef38bdd87c7e1fbcfc835b09141ab5ce2ee78cf30a8d48fe1a789445fed'
  name 'Arduino'
  homepage 'https://www.arduino.cc/'

  app 'Arduino.app'
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  caveats do
    depends_on_java
  end
end
