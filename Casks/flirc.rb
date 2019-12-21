cask 'flirc' do
  version '3.25.1'
  sha256 'cebd22f35ed9ca6d83a9f4b8e4e4ecaed853c8e0feb77a271c4541a27539c2ab'

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
