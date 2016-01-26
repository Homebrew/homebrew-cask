cask 'insertpic' do
  version '4.2'
  sha256 '1c9ed72327496bb24bd2e6820eadbac41befe6faa7dddc8215e66c577bf7f10e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  appcast 'http://www.getinsertpic.com/app_cast',
          checkpoint: '9090426919cd45cfa6ae7aef6e3a61130ebda5a9b3a30df55397684235ca9b5c'
  name 'InsertPic'
  homepage 'http://www.getinsertpic.com/'
  license :gratis

  app 'InsertPic/InsertPic.app'
end
