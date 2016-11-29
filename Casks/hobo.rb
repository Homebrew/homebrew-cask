cask 'hobo' do
  version '1.1.7'
  sha256 '82aa973997f1e3655d6d9f8545e99824e64f2f1fad0ec45600bcdac42c0e648d'

  # downloads-clickonideas.netdna-ssl.com/hobo was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31',
          checkpoint: '7e1bee541054caae98209bdb7039350806173a1baf9ffff81e659f12bc8d1460'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'

  app 'Hobo.app'
end
