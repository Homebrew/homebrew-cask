cask 'navicat-for-oracle' do
  version '12.0.19'
  sha256 'ad59ae84215fa0fa4eda34761a9ae93e763d83972695699d8711f5507c261a79'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: '5235500c11211e2d4afc9bb0e42c18165c64bf6ccbdf12941e3c07c8e8578c79'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
