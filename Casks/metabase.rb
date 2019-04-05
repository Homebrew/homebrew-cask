cask 'metabase' do
  version '0.32.2.0'
  sha256 '7cb2d6e59f13784eacdcc42fd0e358d24ffaf8959c33e0b2621e434695ec17f1'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
