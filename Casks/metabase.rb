cask 'metabase' do
  version '0.32.9.0'
  sha256 'dc4f76d093f80aa2f27d4dd8b961afff8fdbe8d94841c0838779c992a6b2436f'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
