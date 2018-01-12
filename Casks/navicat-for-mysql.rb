cask 'navicat-for-mysql' do
  version '12.0.20'
  sha256 '71bd7d9d8abcb7cb14506d61158a025f3c4ebecfc95ff2398248c7c39b78e0cd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: 'a713bea84facc0985f3b4b4d3a2bde66b9661a1734c9fa3ddb7376ee96df5b92'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
