cask 'metabase-app' do
  version '0.28.5.1'
  sha256 '15d0a19a14f51e5de6607041f7bf3e42c44686b6a43da270609ba6065c32def0'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '657c3a93f0146c3c0a90cc3f8733d469e7f99b737664ba1f60cef5d3be52830b'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
