cask 'ioregistryexplorer' do
  version '2.1'
  sha256 'a4e2303adf54faf1766f675c73d55dc5b9e112a2ca457ca2e7a8d7d7e4c8da85'

  url "https://github.com/vulgo/IORegistryExplorer/releases/download/v#{version}/IORegistryExplorer-#{version}.dmg"
  appcast 'https://github.com/vulgo/IORegistryExplorer'
  name 'ioregistryexplorer'
  homepage 'https://github.com/vulgo/IORegistryExplorer'

  app 'IORegistryExplorer.app'
end
