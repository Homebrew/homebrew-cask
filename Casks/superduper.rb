cask 'superduper' do
  version '3.2,113'
  sha256 '73bcdfcfe879544342972dc422eede574d8afcc0438d55c8975a0d6754e57943'

  # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100'
  name 'SuperDuper!'
  homepage 'http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
