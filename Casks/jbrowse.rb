cask 'jbrowse' do
  version '1.16.3'
  sha256 '353afd0b1af03db780d9ac2d771fff276b5e96ae8dcc79709aa6500b331421c9'

  # github.com/GMOD/jbrowse was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
