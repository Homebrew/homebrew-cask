cask :v1 => 'debookee' do
  version '4.2.2'
  sha256 '483c2cfa4162fbc23411c33101c99c774d7f5594075270979fded40ce884b8c2'

  url 'http://www.iwaxx.com/debookee/debookee.zip'
  appcast 'http://www.iwaxx.com/debookee/appcast.php',
          :sha256 => '42d6b8de182952c1b32fbc12614a3690d125688c97f47618b26cc7aa192b761b'
  name 'Debookee'
  homepage 'http://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
