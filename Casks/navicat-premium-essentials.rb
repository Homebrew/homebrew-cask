cask 'navicat-premium-essentials' do
  version '11.2.7'
  sha256 '875a0af1db1f179be4e927dc6e7346724cc797241e6db8aaffed567dbf09ab28'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
