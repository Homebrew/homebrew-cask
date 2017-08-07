cask 'navicat-for-oracle' do
  version '12.0.10'
  sha256 'e596eebf36ecf4cdd20784dfd0b31255c67aba81fb33b4a7f7fc8f755dfcb518'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: 'ebf364b59c523ff561a7a31b7e99b18e32ec6c54f466fffb9b2b165ad65d044d'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
