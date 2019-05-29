cask 'frhelper' do
  version '3.9.0'
  sha256 'd7f86e4876b82fd4dac2fda677e5b7e7fdcadd8c1908b242e95c5c907bba7e5e'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/fhmac.dmg'
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
