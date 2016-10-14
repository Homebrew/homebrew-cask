cask 'crypt' do
  version '3'
  sha256 'e9e82ad331fe26a26ddb9625a9e1ac8e65086770c1abf4bfa503c8336bdf37bd'

  # voluntary.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://voluntary.net.s3.amazonaws.com/Crypt#{version}_20100429.zip"
  name 'Crypt'
  homepage 'https://voluntary.net/crypt/'

  app "Crypt#{version}.app"
end
