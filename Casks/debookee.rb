cask 'debookee' do
  version '4.2.2'
  sha256 '483c2cfa4162fbc23411c33101c99c774d7f5594075270979fded40ce884b8c2'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          :checkpoint => 'b7c9c5665af56f187e7eb12cafe2df1bd641bf43e13e13962cf054a553d27166'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
