cask 'navicat-premium-essentials' do
  version '12.1.10'
  sha256 'b031feff9b8c1a45606d989345f4f92df48273d90a9182300fdb9d59a7ec7376'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
