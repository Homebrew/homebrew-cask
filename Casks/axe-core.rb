cask 'axe-core' do
  version '1.5.0.1'
  sha256 '58ceca312be1b3d3703c2ada66d78708b75fbe2e1f0eae7a5c8735d1beae1a1d'

  url "https://github.com/axerunners/axe/releases/download/v#{version}/axecore-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/axerunners/axe/releases.atom'
  name 'Axe'
  homepage 'https://github.com/axerunners/axe'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Axe-Qt.app', target: 'Axe Core.app'
end
