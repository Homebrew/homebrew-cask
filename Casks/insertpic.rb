cask 'insertpic' do
  version '4.2'
  sha256 '1c9ed72327496bb24bd2e6820eadbac41befe6faa7dddc8215e66c577bf7f10e'

  # amazonaws.com/insertPic was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  appcast 'http://www.getinsertpic.com/app_cast'
  name 'InsertPic'
  homepage 'http://www.getinsertpic.com/'

  app 'InsertPic/InsertPic.app'
end
