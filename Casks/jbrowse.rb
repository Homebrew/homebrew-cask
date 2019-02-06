cask 'jbrowse' do
  version '1.16.2'
  sha256 'cd1ec2e3bcadf1b3b2fc6640a8dc003179ff385ae75e5f5c5d24400ee029104f'

  # github.com/GMOD/jbrowse was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
