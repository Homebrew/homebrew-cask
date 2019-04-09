cask 'hobo' do
  version '1.5.1'
  sha256 '55ed3af75ace097863e4cf90dcf80209497af4e8ea67b81cb40d5bff9efd5f3b'

  # downloads-clickonideas.netdna-ssl.com/hobo was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'

  depends_on macos: '>= :sierra'

  app 'Hobo.app'
end
