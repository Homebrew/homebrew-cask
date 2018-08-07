cask 'jbrowse' do
  version '1.15.1'
  sha256 'b56f0275d890f2c38c7410273f7c52c10df35972f34f1867492ad626854951f1'

  # github.com/GMOD/jbrowse was verified as official when first introduced to the cask
  url 'https://github.com/GMOD/jbrowse/releases/download/1.15.1-release/JBrowse-1.15.1-desktop-darwin-x64.zip'
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app 'JBrowseDesktop-darwin-x64/JBrowseDesktop.app'
end
