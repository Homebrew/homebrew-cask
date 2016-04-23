cask 'debookee' do
  version '5.0.7'
  sha256 '6f3da60452783c00f1c12a2023619983291e0cea940995ba033c1525d6694049'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '6ce459f965fab48a53e113594cc0af5af8c4c43e098f569d260669fad583ff29'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
