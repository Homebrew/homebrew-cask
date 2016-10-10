cask 'jbrowse' do
  version '1.12.1'
  sha256 '8b6921c2057f5ff11e5b9531cc848744aba932984fc3f408550f396a34afefe6'

  url "https://jbrowse.org/releases/JBrowse-#{version}-desktop-osx.zip"
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app 'JBrowseDesktop-darwin-x64/JBrowseDesktop.app'
end
