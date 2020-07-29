cask 'navicat-premium' do
  version '15.0.18'

  language 'zh-CN' do
    sha256 'f46f38799aaa69d830c04f789f917151bdab1eeee617433daaea6d33b5a7bd2d'
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage 'https://www.navicat.com.cn/products/navicat-premium'
  end

  language 'en', default: true do
    sha256 'abc959616d08b2f0dabe08f40068013bfb716352f725197e2221f92e0e828707'
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
    homepage 'https://www.navicat.com/products/navicat-premium'
  end

  name 'Navicat Premium'

  app 'Navicat Premium.app'
end
