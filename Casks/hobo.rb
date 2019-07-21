cask 'hobo' do
  version '1.5.2'
  sha256 '2055fa19766fbdcb5ef53b1e0b6ca72d9ae120b4c4ea37c8fe9cd511a12b7d4a'

  # downloads-clickonideas.netdna-ssl.com/hobo was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'

  depends_on macos: '>= :sierra'

  app 'Hobo.app'
end
