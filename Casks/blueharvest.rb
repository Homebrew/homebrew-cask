cask 'blueharvest' do
  version '6.3.8'
  sha256 '04743f62e0e77e4af9c2af6042d7cee5cd2cf51dd790ef8400386d296261d73c'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: '68ad00a2015841af5e7788c259e24ad6d6aa77d9c0c27f08ae4d502bb955c528'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
