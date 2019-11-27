cask 'flirc' do
  version '3.24.3'
  sha256 'aa26b8a5d470c90bbfb23b3438a3580cb51e01d6cecfb776ed9d8c6885ace6c2'

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
