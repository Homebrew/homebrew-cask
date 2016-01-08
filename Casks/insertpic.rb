cask 'insertpic' do
  version '4.2'
  sha256 '1c9ed72327496bb24bd2e6820eadbac41befe6faa7dddc8215e66c577bf7f10e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  appcast 'http://www.getinsertpic.com/app_cast',
          :sha256 => 'dffa55a1b1b73c2a8ec34794c69c6bf92964e888e4f08ac2f55d59ff413a5a7e'
  name 'InsertPic'
  homepage 'http://www.getinsertpic.com/'
  license :gratis

  app 'InsertPic/InsertPic.app'
end
