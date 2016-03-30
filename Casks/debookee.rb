cask 'debookee' do
  version '5.0.1'
  sha256 '721bd79bb23481262e0304af1946d23cf359525b9382ce579eeb221883ca66cf'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '66bf01c45716553aa8845c4a5f8cd3b03c4440e280ea66b97b6f7d038300dd0f'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
