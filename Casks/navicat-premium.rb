cask 'navicat-premium' do
  version '15.0.17'

  language 'zh', 'CN' do
    sha256 '2fe70a1cc4ab9f633746886a6a6048bf55af12635ed0b3c9d08c512d0524db4c'
    url "http://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
    homepage 'https://www.navicat.com.cn/products/navicat-premium'
  end

  language 'en', default: true do
    sha256 'ba0ddffa076c7d01384dedf7383bcc33695d27c584223944e62f8df388403f3d'
    url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
    appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
    homepage 'https://www.navicat.com/products/navicat-premium'
  end

  name 'Navicat Premium'

  app 'Navicat Premium.app'
end
