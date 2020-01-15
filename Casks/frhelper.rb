cask 'frhelper' do
  version '3.9.4,2019-12-13'
  sha256 '30d03c22f3e3fd0533ef8f223f6db546f922722b4dde9eb91d53c1ce7d2f7660'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.eudic.net/v4/fr/app/download',
          configuration: version.after_comma
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
