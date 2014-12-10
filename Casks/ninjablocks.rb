cask :v1 => 'ninjablocks' do
  version '0.2'
  sha256 'f0ed94bc767a7f0059d08904f71c4266b6045ce4f7c194678e48b02a2d85eaeb'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/428557/NinjaBlocks-#{version}.dmg"
  homepage 'http://forums.ninjablocks.com/index.php?p=/discussion/1655/ninja-osx-client/p1'
  license :unknown    # todo: improve this machine-generated value

  app 'NinjaBlocks.app'
end
