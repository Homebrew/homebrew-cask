cask 'jbrowse' do
  version '1.12.3'
  sha256 '4b9c6ab17c7a00ffb8a60cac73774391a83b5a8833bcf2672172878ee81e08dc'

  url "https://jbrowse.org/releases/JBrowse-#{version}/JBrowse-#{version}-desktop-osx.zip"
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app 'JBrowseDesktop-darwin-x64/JBrowseDesktop.app'
end
