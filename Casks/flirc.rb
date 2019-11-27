cask 'flirc' do
  version '3.24.2'
  sha256 'e8163616146448e1541c554d47c3325428fe1d0db143f8aad8ccd9661a75f34a'

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
