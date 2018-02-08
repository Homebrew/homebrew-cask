cask 'metabase-app' do
  version '0.28.0.0'
  sha256 'c0a0cd65d05a2975828b25fe24dbcaffc01d397c21215e5f6d2a3483c44ff159'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '98c2032a621c88719da91f5e664eac1d8c7ca529afd814d6f528cf3819995acc'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
