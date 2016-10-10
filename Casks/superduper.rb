cask 'superduper' do
  version :latest
  sha256 :no_check

  # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
  name 'SuperDuper!'
  homepage 'http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap delete: '~/Library/Application Support/SuperDuper!'
end
