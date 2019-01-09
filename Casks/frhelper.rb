cask 'frhelper' do
  version '3.8.7,2018-11-28'
  sha256 '95c5e5d2ffcb91faf6f7a7259367afacca0bb0e9672a35b408bb6fc52e0ebc8d'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
