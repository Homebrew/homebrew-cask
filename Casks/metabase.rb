cask 'metabase' do
  version '0.33.3.1'
  sha256 '1b736d543ce2a2eaca1cf0926f71e81934d35d3330ab5e25f15b51d77f3ce82a'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
