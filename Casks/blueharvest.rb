cask 'blueharvest' do
  version '6.3.9'
  sha256 'e7abe0614082a57cddd23d79fb536543fc09434ee30353f210c6f88f0ac9a9b5'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: '9e470fcb5428142efcfb7b46ccb308bce32606a49fa6d2a25d383edaf30b80dc'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
