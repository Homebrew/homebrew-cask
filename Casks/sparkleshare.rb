cask 'sparkleshare' do
  version '2.0.1'
  sha256 'e8c393e380cd26bcf9dd28f02c74d5532b69a98723de8b85bfdf9c13972f826c'

  # github.com/hbons/SparkleShare was verified as official when first introduced to the cask
  url "https://github.com/hbons/SparkleShare/releases/download/#{version}/sparkleshare-mac-#{version}.zip"
  appcast 'https://github.com/hbons/SparkleShare/releases.atom'
  name 'SparkleShare'
  homepage 'https://sparkleshare.org/'

  app 'SparkleShare.app'
end
