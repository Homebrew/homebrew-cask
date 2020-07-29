cask 'metabase' do
  version '0.35.4'
  sha256 'fbb11f4c2a19b18e0487692b4cf155dac9f2a779ee91aa0860b8b39e8f3d0721'

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
