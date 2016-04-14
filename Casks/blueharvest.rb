cask 'blueharvest' do
  version '6.3.7'
  sha256 '78dcc3bbad7426a40150984dc1573157fbfaf894d8084f60cf055c5b90b49f51'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: 'b495c1d2c2a1609bba50a038a6bcf03b936cddfd222aaa231595de9068d12a7c'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
