cask 'airparrot' do
  version '2.5.1'
  sha256 'a8dcb058557f7f1310dbb260eaa53f9ba63464d300feabd77ea093597eb74934'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '2a3a76dd27f5dfbd6e90724841f61a30d94708b9ae1087ac5f2d7fa8098c98b4'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
