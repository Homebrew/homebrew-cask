cask 'blueharvest' do
  version '6.4.1'
  sha256 '8259bf1665a7d48cb6b1942e2d50d3ef86d99cec3fe4176dd4e8aa6c61a1ee14'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast "https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest#{version.major}.xml",
          checkpoint: 'a626985f9b61dce276c0dd0c4b1882caab17dee35da9c9e93abd1c963bc4416e'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'

  app 'BlueHarvest.app'
end
