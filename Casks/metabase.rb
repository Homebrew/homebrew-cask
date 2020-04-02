cask 'metabase' do
  version '0.35.0'
  sha256 '8ec052262d0427310bc75a5ff457e3cfebc0099d7e59137dbef2fc6e13bf8efb'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
