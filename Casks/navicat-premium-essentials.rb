cask 'navicat-premium-essentials' do
  version '12.0.14'
  sha256 '377464c230a2bb802cd08c4fa8df18f51633e5fac1ae654f252aa7c1ec6d2bbe'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
