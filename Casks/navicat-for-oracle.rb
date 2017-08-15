cask 'navicat-for-oracle' do
  version '12.0.11'
  sha256 'd5ef957445619e06852c48a89afb77a04c801b2a89c30aa5afbe92db3158c722'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note#M',
          checkpoint: '1f85766e639ebf7f0a8ae1dd5c98ce1084126af08332eb3bb55a1b86e2e0d563'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
