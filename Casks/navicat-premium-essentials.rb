cask 'navicat-premium-essentials' do
  version '12.1.12'
  sha256 'bed84435e5c97a4fe3e6ed7cea238a6caf502340e15a87933e31dcd0772127ea'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
