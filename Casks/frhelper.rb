cask 'frhelper' do
  version '3.9.2'
  sha256 '85c5bb80abdf63b5623ac6561b14e5ed7e439ec9848d36798e66988bf84c793a'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/fhmac.dmg'
  appcast 'https://www.francochinois.com/update/frhelper_mac.xml'
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
