cask 'sparkleshare' do
  version '2.0.1'
  sha256 'e8c393e380cd26bcf9dd28f02c74d5532b69a98723de8b85bfdf9c13972f826c'

  # github.com/hbons/SparkleShare was verified as official when first introduced to the cask
  url "https://github.com/hbons/SparkleShare/releases/download/#{version}/sparkleshare-mac-#{version}.zip"
  appcast 'https://github.com/hbons/SparkleShare/releases.atom',
          checkpoint: 'c89ad2c18fd529f96f7822eda90b3ac8f7aac25d137ebb736191f22d8e3ddf93'
  name 'SparkleShare'
  homepage 'https://sparkleshare.org/'

  app 'SparkleShare.app'
end
