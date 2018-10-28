cask 'superduper' do
  version '3.2.3,116'
  sha256 'af4f27c4cfdc47f9d3f47054277f99691c7ea33dacfdaa75f6e97eb1dc7242d1'

  # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100'
  name 'SuperDuper!'
  homepage 'https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
