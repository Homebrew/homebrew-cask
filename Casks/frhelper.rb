cask 'frhelper' do
  version '3.9.2'
  sha256 '41607093bb445ac154baa752fea2fdf55d2c621315fa88408214fe19d6f978d8'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/fhmac.dmg'
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
