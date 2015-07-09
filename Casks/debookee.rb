cask :v1 => 'debookee' do
  version '4.2.0'
  sha256 '7f2a67d6a8d80da39a9a5d3b200c3995868b608fc9abc34b0cd690d84db090fb'

  url 'http://www.iwaxx.com/debookee/debookee.zip'
  appcast 'http://www.iwaxx.com/debookee/appcast.php',
          :sha256 => '42d6b8de182952c1b32fbc12614a3690d125688c97f47618b26cc7aa192b761b'
  name 'Debookee'
  homepage 'http://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
