cask 'metabase-app' do
  version '0.30.3.0'
  sha256 '4632bcf240715a84fd27cadc15628a567b58f1af05ce2a9a4fa179ca73ac3402'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
