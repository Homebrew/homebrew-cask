cask 'navicat-for-oracle' do
  version '15.0.5'
  sha256 '090daee3d79a6e3162d475ae2b4739359a1d31c85556d7891b524fb9247296f5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
