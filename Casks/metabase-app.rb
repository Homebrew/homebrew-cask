cask 'metabase-app' do
  version '0.30.0'
  sha256 '0e37236a4b0fbf3567f0f3b05151b03e94e2fa966ee9f725ebc499253bb87b9b'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
