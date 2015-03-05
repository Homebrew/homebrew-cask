cask :v1 => 'insertpic' do
  version '3.5'
  sha256 'f12f9ec1f023f8c38fd735ecc2d2c725ee0e7dab757f6a5250e22198ea179e26'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  homepage 'http://www.getinsertpic.com/'
  license :gratis

  app 'InsertPic/InsertPic.app'
end
