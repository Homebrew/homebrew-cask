cask 'debookee' do
  version '5.1.1'
  sha256 '509b3ebb6213de65ddf610b2f9544090a60dbee8ce44179abf82ff6dc9eabb4f'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: 'ac2ea7ea2ec986c2da756f8d9b3e6200c780251bf103b914ab41e3804550b316'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
