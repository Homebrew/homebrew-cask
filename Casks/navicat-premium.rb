cask 'navicat-premium' do
  version '15.0.15'
  sha256 :no_check

  language 'zh', 'CN' do
    homepage 'https://www.navicat.com.cn/products/navicat-premium'
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    'cs'
  end

  language 'en', default: true do
    homepage 'https://www.navicat.com/products/navicat-premium'
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    'en'
  end

  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'

  app 'Navicat Premium.app'
end
