cask 'navicat-for-mysql' do
  version '12.0.26'
  sha256 '6c45e085ad885f7a11164d5485edff37f6e2753fe6569d48bb89e1b8cee6687c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: 'fd8f3b5d7c2cfe604bbfcf352f0254e64af22ed83e011f143d5e9d12876d300f'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
