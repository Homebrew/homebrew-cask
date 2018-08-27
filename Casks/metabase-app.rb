cask 'metabase-app' do
  version '0.30.1.0'
  sha256 '386a0ccafb2de64e2c953e98fe7f1485df3117d8dcb4c96093dbaa868e6448a9'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
