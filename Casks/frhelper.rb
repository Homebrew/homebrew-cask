cask 'frhelper' do
  version '3.9.1'
  sha256 'cb6825c62657f4c8d229294d1239fedc804850d4a5832bd126c8745489b79591'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/fhmac.dmg'
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
