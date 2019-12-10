cask 'frhelper' do
  version '3.9.3,2019-10-14'
  sha256 'bc0e4369c0ce482a42f138d7ea347d5e261cd522e8f21f06a6548ac147541a7e'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
