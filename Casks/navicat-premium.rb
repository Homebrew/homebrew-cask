cask 'navicat-premium' do
  version '15.0.15'

  language 'zh', 'CN' do
    sha256 'e4663b202cb37d9847328c04c43b6135a7ec5e2a2cabecba096b5c8a2866d5f7'
    ['.com.cn', 'cs']
  end

  language 'en', default: true do
    sha256 '626609232cce4b67420ed66d68d0a6dd798ec8e40e1783a666f1bf281e875146'
    ['.com', 'en']
  end

  # download.navicat was verified as official when first introduced to the cask
  url "http://download.navicat#{language[0]}/download/navicat#{version.major_minor.no_dots}_premium_#{language[1]}.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage "https://www.navicat#{language[0]}/products/navicat-premium"

  app 'Navicat Premium.app'
end
