cask 'popsql' do
  version '0.9.3'
  sha256 'ecc6e0871bb6299452bdea53a509345d52ac746b91c5e4c9cfbe02bbbd6fc65d'

  # popsql-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://popsql-releases.s3.amazonaws.com/mac/PopSQL-#{version}-mac.zip"
  appcast 'https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml'
  name 'PopSQL'
  homepage 'https://popsql.io/'

  app 'PopSQL.app'
end
