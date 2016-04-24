cask 'navicat-premium-essentials' do
  version '11.2.10'
  sha256 'e6b5e065d84b8ba11df165faddb88c48d18e9e73c68645d8d3021d96a795dd47'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
