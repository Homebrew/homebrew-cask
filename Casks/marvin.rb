cask 'marvin' do
  version '1.36.1'
  sha256 'f31872ef2ea13075206ebcc9ebfdad6ebeca06577db4918b923deb38d1d77095'

  # amazingmarvin.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url 'http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
