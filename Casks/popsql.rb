cask 'popsql' do
  version '0.9.2'
  sha256 '9e97c094d3217a4a5f4ab93751615da5793d0a1c545d871f36f77d14e5ac9920'

  # popsql-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://popsql-releases.s3.amazonaws.com/mac/PopSQL-#{version}-mac.zip"
  appcast 'https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml'
  name 'PopSQL'
  homepage 'https://popsql.io/'

  app 'PopSQL.app'
end
