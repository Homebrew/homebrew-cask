cask 'metabase' do
  version '0.33.2.0'
  sha256 'fa7bc7cab9e68335ef3bfa92b5f9323e86e4f5f17d55e50e4b2f004f6852508e'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
