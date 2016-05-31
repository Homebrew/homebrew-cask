cask 'navicat-premium-essentials' do
  version '11.2.10'
  sha256 '556705265af0b09cb1bde5542c74dff9ea5b3bb5abfbfea040c3755b7edfaa7d'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
