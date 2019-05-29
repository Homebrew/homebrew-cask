cask 'frhelper' do
  version '3.8.9,2019-01-15'
  sha256 '951b5be64806fb6bd726d9a5048fe31f977db44c789cdbeaaf7df9b6f330a54f'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
