cask 'metabase' do
  version '0.32.6.0'
  sha256 'e4f28c93c052f7e7a7850136abc87e3782a3c6994ae3a5a55258cc73893a0cf4'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
