cask 'blueharvest' do
  version '6.3.10'
  sha256 'bd6e8ff7a061969d09907c610878bef47b8e4eb346018afce2a7b88450d8ded7'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast "https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest#{version.major}.xml",
          checkpoint: '00c105a8e5021d30fc552407ab64f00a7a5a47143c7a9c92f56501bc5d4ab3fb'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'

  app 'BlueHarvest.app'
end
