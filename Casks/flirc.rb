cask 'flirc' do
  version '3.24.0'
  sha256 'fc4996cc47f9e72cc25cff984e5f9c3dbf6bd7103fa78b423b6d5ad8f0510067'

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
