cask 'crypt' do
  version '3'
  sha256 'e9e82ad331fe26a26ddb9625a9e1ac8e65086770c1abf4bfa503c8336bdf37bd'

  # voluntary.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://voluntary.net.s3.amazonaws.com/Crypt#{version}_20100429.zip"
  appcast 'https://voluntary.net/crypt/',
          checkpoint: '9754a5d7fca5ad8c9d5ad8543f574dcb4cd053b20de1b98c110698d28ea4488a'
  name 'Crypt'
  homepage 'https://voluntary.net/crypt/'

  app "Crypt#{version}.app"
end
