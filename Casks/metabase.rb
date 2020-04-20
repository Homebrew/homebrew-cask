cask 'metabase' do
  version '0.35.2'
  sha256 '06d56f3e81b9647c6c150c4406d4d340861c4e93ea332fe2e2f45e19110e2cb3'

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
