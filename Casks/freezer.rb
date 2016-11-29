cask 'freezer' do
  version '0.3'
  sha256 'ad5882b867c1ace5255f6ac3b3ec2ebd0098c64047adcbdebc273cd0beff3ff3'

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Freezer',
          checkpoint: '4f5c4a2130291c9e756110919390cb5aedc5bbd0e037160508f4eec2af0b926e'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'

  app 'Freezer/Freezer.app'
end
