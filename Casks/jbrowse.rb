cask 'jbrowse' do
  version '1.15.3'
  sha256 '8b8b584362d01fdb77eb4e9e4b96a215c8f684db26bd97d3dd44b27dfa71e5fa'

  # github.com/GMOD/jbrowse was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
