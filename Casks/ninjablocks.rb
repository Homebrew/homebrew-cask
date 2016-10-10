cask 'ninjablocks' do
  version '0.2'
  sha256 'f0ed94bc767a7f0059d08904f71c4266b6045ce4f7c194678e48b02a2d85eaeb'

  # per https://twitter.com/ninjablocks/status/553339958606299136
  # dropboxusercontent.com/u/428557 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/428557/NinjaBlocks-#{version}.dmg"
  name 'NinjaBlocks'
  homepage 'https://discuss.ninjablocks.com/t/ninja-osx-client/1449'

  app 'NinjaBlocks.app'
end
