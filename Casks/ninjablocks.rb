cask 'ninjablocks' do
  version '0.2'
  sha256 'f0ed94bc767a7f0059d08904f71c4266b6045ce4f7c194678e48b02a2d85eaeb'

  # dropboxusercontent.com is the official download host per the developer
  # Original discussion: https://twitter.com/ninjablocks/status/553339958606299136
  url "https://dl.dropboxusercontent.com/u/428557/NinjaBlocks-#{version}.dmg"
  name 'NinjaBlocks'
  homepage 'https://discuss.ninjablocks.com/t/ninja-osx-client/1449'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NinjaBlocks.app'
end
