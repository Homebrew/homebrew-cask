cask 'freezer' do
  version '0.3'
  sha256 'ad5882b867c1ace5255f6ac3b3ec2ebd0098c64047adcbdebc273cd0beff3ff3'

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Freezer',
          checkpoint: 'fc9e1cf68f0d144680cf751cff38986edfc21a88ef09eed3558a0b18217b82c2'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'

  app 'Freezer/Freezer.app'
end
