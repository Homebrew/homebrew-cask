cask 'crypt' do
  version '3'
  sha256 'e9e82ad331fe26a26ddb9625a9e1ac8e65086770c1abf4bfa503c8336bdf37bd'

  # voluntary.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://voluntary.net.s3.amazonaws.com/Crypt#{version}_20100429.zip"
  appcast 'https://voluntary.net/crypt/',
          checkpoint: '91ae34bf38675d39e737c284ff49d61190cf219840e0ff2a4161ea7cc4a1ab19'
  name 'Crypt'
  homepage 'https://voluntary.net/crypt/'

  app "Crypt#{version}.app"
end
