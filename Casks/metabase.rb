cask 'metabase' do
  version '0.32.8.0'
  sha256 '0511b709fcddeabe1402e4beb115fe7e40673fabb3abf1a5a87d6d0df5d778d1'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
