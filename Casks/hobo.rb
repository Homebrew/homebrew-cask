cask 'hobo' do
  version '1.5.0'
  sha256 '0ae35adac210912f656914fca24b90a006b6ca86c188dc66453cd45c2bc8574b'

  # downloads-clickonideas.netdna-ssl.com/hobo was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'

  app 'Hobo.app'
end
