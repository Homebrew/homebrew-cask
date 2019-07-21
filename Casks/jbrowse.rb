cask 'jbrowse' do
  version '1.16.6'
  sha256 '5e12f08574cdc596abf54e784598075e1ea990c8164871b9b742355907f083c5'

  # github.com/GMOD/jbrowse was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
