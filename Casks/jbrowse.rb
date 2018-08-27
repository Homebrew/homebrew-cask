cask 'jbrowse' do
  version '1.15.2'
  sha256 '8f4e6f0bf362392238a3d4776561c87aea6d36d4dea3c2a32b90bc2a8e08df42'

  # github.com/GMOD/jbrowse was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
