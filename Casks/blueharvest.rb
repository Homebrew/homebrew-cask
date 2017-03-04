cask 'blueharvest' do
  version '6.4.0'
  sha256 'd680b8b2d7cf5a9503fc5ef5881de7ec0ff0f526bb86b846605344d5abcb9679'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast "https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest#{version.major}.xml",
          checkpoint: 'd8ea7887c3f0b34f3052c012871ed18eefa903f2308ccd97872d14ef64cdbd58'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'

  app 'BlueHarvest.app'
end
