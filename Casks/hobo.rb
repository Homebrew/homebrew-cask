cask 'hobo' do
  version '1.1.6'
  sha256 'dd22f3c4cc83e62a099303cbbae4777cc892de6b7ebe0c83ea7b0d682216f7ee'

  # downloads-clickonideas.netdna-ssl.com/hobo was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31',
          checkpoint: 'a71e0ca6be6ba4ae10e657c168b118f7d991385249dbaa76ea19a7ddf9a7edac'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'
  license :commercial

  app 'Hobo.app'
end
