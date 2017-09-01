cask 'hp-easy-start' do
  version '2.6.1.164'
  sha256 'bcf5a7f2e173ba00fd802d6b25179008373c83f7511e0a4d68be8c002f5ea0a8'

  url "http://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/Applications/HP_Easy_Start.app.zip"

  name 'HP Easy Start'
  homepage 'https://support.hp.com/us-en/drivers/selfservice/swdetails/hp-deskjet-2130-all-in-one-printer-series/7174550/model/7174551/swItemId/mp-166618-4'

  installer manual: 'HP Easy Start.app'
end
