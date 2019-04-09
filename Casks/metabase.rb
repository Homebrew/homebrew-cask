cask 'metabase' do
  version '0.32.3.1'
  sha256 '90e95bef0fa446b920facab0086e947c1cf0a287ea126fb0a9cd64177859ff06'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
