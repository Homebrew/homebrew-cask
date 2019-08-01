cask 'metabase' do
  version '0.32.10.0'
  sha256 '06923e5e66e3a2dc0a0e3c4df9e69e5caaa1f25dddadf853772d148833cc5963'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
