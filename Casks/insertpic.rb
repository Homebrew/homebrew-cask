cask :v1 => 'insertpic' do
  version '4.0'
  sha256 'cb2bd2aa1f00637a49ef035018eba66df3095bc3c9a69520a9287d6f8c81aa70'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  name 'InsertPic'
  appcast 'http://getinsertpic.com/app_cast',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'http://www.getinsertpic.com/'
  license :gratis

  app 'InsertPic/InsertPic.app'
end
