cask 'sparkleshare' do
  version '1.5'
  sha256 '5000d3484e864c2ca94fb9e3ed40cdcb5d23664fe5708f351b73b8abe6d34f2a'

  # bitbucket.org/hbons/sparkleshare was verified as official when first introduced to the cask
  url "https://bitbucket.org/hbons/sparkleshare/downloads/sparkleshare-mac-#{version}.zip"
  appcast 'https://github.com/hbons/SparkleShare/releases.atom',
          checkpoint: '65e48f97e46f2c031347253bb72e60e23a4fe5ba7e9f874b536f4ddf49b994e6'
  name 'SparkleShare'
  homepage 'https://sparkleshare.org/'

  app 'SparkleShare.app'
end
