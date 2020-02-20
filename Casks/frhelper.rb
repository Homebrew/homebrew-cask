cask 'frhelper' do
  version '3.9.5,2020-01-19'
  sha256 '4d6ae7da29343f18fea57b419c1c8a838bfa8e813af87b1eaac15acb503c9378'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.eudic.net/v4/fr/app/download',
          configuration: version.after_comma
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
