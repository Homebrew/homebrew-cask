cask 'navicat-premium-essentials' do
  version '12.1.5'
  sha256 '8118a6eb6d61768fba7d15cc97966c518354e8b2b08adcd6354f0841647a26b4'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
