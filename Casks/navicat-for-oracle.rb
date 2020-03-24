cask 'navicat-for-oracle' do
  version '15.0.12'
  sha256 'e56e5301efed457a90c0b1a6f3a961eb20f49e735c5cb84c10e67ab9a8725620'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
