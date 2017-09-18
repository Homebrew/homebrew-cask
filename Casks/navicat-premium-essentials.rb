cask 'navicat-premium-essentials' do
  version '12.0.13'
  sha256 '913717a01fa9fe42ddee3989260f07ba24bbe38faa36b525efb7b265f9659797'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
