cask 'navicat-for-oracle' do
  version '12.0.25'
  sha256 '3ec44c118718e7e1b6c44b0c1328be7c49c04783f585cf87bcc4a1ea6c2eeb66'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: 'ec8b5ac6adb769667dd96b8c3a3b46be3a13c3e665ef21ab79a96d7d615cd729'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
