cask 'insertpic' do
  version '4.2'
  sha256 '1c9ed72327496bb24bd2e6820eadbac41befe6faa7dddc8215e66c577bf7f10e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  appcast 'http://www.getinsertpic.com/app_cast',
          :checkpoint => '6dd7071de8b9a0e785368c76b2d27a35c74457f8f7a29cae4c6c6893f53ecc98'
  name 'InsertPic'
  homepage 'http://www.getinsertpic.com/'
  license :gratis

  app 'InsertPic/InsertPic.app'
end
