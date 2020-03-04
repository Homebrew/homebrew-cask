cask 'metabase' do
  version '0.34.3'
  sha256 'd191cf4dc21fbe7e34a74dde9b6781b677d9d7a03ea40eb32a85d6c1317deb3b'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
