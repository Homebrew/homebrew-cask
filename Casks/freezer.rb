cask 'freezer' do
  version '0.3'
  sha256 'ad5882b867c1ace5255f6ac3b3ec2ebd0098c64047adcbdebc273cd0beff3ff3'

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Freezer'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'

  app 'Freezer/Freezer.app'
end
