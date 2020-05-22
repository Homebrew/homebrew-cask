cask 'navicat-premium' do
  version '15.0.16'

  language 'zh', 'CN' do
    sha256 '03cacd764a53ab2df02aefa4af45e907a690cc161fdbaf41b034a3ef4a26a238'
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage 'https://www.navicat.com.cn/products/navicat-premium'
  end

  language 'en', default: true do
    sha256 '6da966165fdea8a1f26a33b9eca4de59c1974d64ad901e1090b03a1983a8bf58'
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
    homepage 'https://www.navicat.com/products/navicat-premium'
  end

  name 'Navicat Premium'

  app 'Navicat Premium.app'
end
