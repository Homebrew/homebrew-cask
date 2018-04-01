cask 'metabase-app' do
  version '0.28.1.0'
  sha256 '03c499778e32feaa2f028cb17e4a77642ed82d8c48f0ca70e0b825c3e152b4aa'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '32ce4a558dd0c0ffa8684ac3b1f7efb56f1aeea6a8d981f93ea5f19fa13d820e'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
