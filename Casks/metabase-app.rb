cask 'metabase-app' do
  version '0.27.2.0'
  sha256 'd206fe5b175183d592441d33665b634617691821306fe3ea63b8b072fa54fb50'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '750a897aa35fe1578ccb6b977ef7292d00f12513e5c77fa05538a70fe7e0b0ab'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
