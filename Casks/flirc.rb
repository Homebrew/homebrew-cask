cask 'flirc' do
  version '3.25.2'
  sha256 '0d5a49472614fbecb3be267a50984d649a693e3f4deeb3b6c27cdc9ecf50cbc5'

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
