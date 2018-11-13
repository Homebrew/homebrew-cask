cask 'flirc' do
  version '3.20.3'
  sha256 'a804806a42baffc3c390afcc9afe56887e56b707c7c4cc6eb6b4d4297ccfa771'

  url 'https://flirc.tv/software/release/gui/mac/Flirc.dmg'
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
