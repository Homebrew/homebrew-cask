cask 'superduper' do
  version '3.2.2,115'
  sha256 '1ea1fdac5f0f541b68bcaa0161082b321a2d72f62092516eb9d40706d2a810d9'

  # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100'
  name 'SuperDuper!'
  homepage 'https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
