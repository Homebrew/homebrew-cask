cask :v1 => 'insertpic' do
  version '4.2'
  sha256 '1c9ed72327496bb24bd2e6820eadbac41befe6faa7dddc8215e66c577bf7f10e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  name 'InsertPic'
  appcast 'http://getinsertpic.com/app_cast',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'http://www.getinsertpic.com/'
  license :gratis

  app 'InsertPic/InsertPic.app'
end
