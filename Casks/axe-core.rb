cask 'axe-core' do
  version '1.4.1'
  sha256 '6d7e8a79f2990e36df9310e196a78711d6c10642d599095633df28309bf0d76c'

  url "https://github.com/axerunners/axe/releases/download/v#{version}/axecore-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/axerunners/axe/releases.atom'
  name 'Axe'
  homepage 'https://github.com/axerunners/axe'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Axe-Qt.app', target: 'Axe Core.app'
end
