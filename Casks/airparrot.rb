cask 'airparrot' do
  version '2.5.1'
  sha256 'a8dcb058557f7f1310dbb260eaa53f9ba63464d300feabd77ea093597eb74934'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '77251c3036157883a293b4de68fbfcc7a5fb5b0efd958eab3a25b0bddd2d6709'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
