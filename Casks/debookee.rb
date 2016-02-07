cask 'debookee' do
  version '4.2.2'
  sha256 '483c2cfa4162fbc23411c33101c99c774d7f5594075270979fded40ce884b8c2'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: 'ea3aa67c11fb8c9b419c2adae34c3cedcee88f41e035b48eb6984dff07effaed'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
