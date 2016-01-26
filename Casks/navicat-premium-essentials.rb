cask 'navicat-premium-essentials' do
  version '11.2.6'
  sha256 '15ff1b590943afb38e5f6c339ed068169d738366081170966b68024056d17685'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
