cask 'navicat-for-oracle' do
  version '15.0.3'
  sha256 '71b76f7970fc295b7fc9b4dca036a4cded5941dfa178e44a90de232007deaba4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
