cask 'popsql' do
  version '0.9.4'
  sha256 '4fd9581f7933acf5ac04bf2c3883028d9ef2f92b7623b05dfce598479fd0808a'

  # popsql-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://popsql-releases.s3.amazonaws.com/mac/PopSQL-#{version}-mac.zip"
  appcast 'https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml'
  name 'PopSQL'
  homepage 'https://popsql.io/'

  app 'PopSQL.app'
end
