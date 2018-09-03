cask 'superduper' do
  version '3.1.7,112'
  sha256 '62861de305bac5fe9f123619d7cd5ec0251f018d296ec1e0f6a13c4f68bc3be9'

  # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100'
  name 'SuperDuper!'
  homepage 'http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
