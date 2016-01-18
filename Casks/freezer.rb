cask 'freezer' do
  version '0.3'
  sha256 'ad5882b867c1ace5255f6ac3b3ec2ebd0098c64047adcbdebc273cd0beff3ff3'

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer',
          checkpoint: 'bf2c35ae8fc05a99936a511abf58b75876fac648b025e1005c2135e446a4af3d'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'
  license :gratis

  app 'Freezer/Freezer.app'
end
