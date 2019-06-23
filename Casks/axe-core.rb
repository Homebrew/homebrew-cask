cask 'axe-core' do
  version '1.4.0.2'
  sha256 '70fb7ac30214ad6d66ae661c2dc5d8b520413d0aafd916d9065789e974c9f72b'

  url "https://github.com/axerunners/axe/releases/download/v#{version}/axecore-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/axerunners/axe/releases.atom'
  name 'Axe'
  homepage 'https://github.com/axerunners/axe'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Axe-Qt.app', target: 'Axe Core.app'
end
