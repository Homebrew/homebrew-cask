cask 'debookee' do
  version '4.2.2'
  sha256 '483c2cfa4162fbc23411c33101c99c774d7f5594075270979fded40ce884b8c2'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          :sha256 => 'd651fa9c4904d143037214757178d2f782f39a50557044b3206b6f1133645a0c'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
