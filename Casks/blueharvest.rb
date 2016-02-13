cask 'blueharvest' do
  version '6.3.6'
  sha256 '5ed3e785966145de5b2bb78ca5ac2b602444a739b54668f24666c848046ba198'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: 'e2a9fc64ee0869c31bdc120e458afd4b5db82390c6fde6c71fcf1f7389633d8e'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
