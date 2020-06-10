cask 'jbrowse' do
  version '1.16.9'
  sha256 '35bc82eefe10606021c0a8d61fdbb7ec39562a340ab01b70c6411dca0266ea34'

  # github.com/GMOD/jbrowse/ was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast 'https://github.com/GMOD/jbrowse/releases.atom'
  name 'jbrowse'
  homepage 'https://jbrowse.org/'

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
