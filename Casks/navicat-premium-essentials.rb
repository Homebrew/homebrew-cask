cask 'navicat-premium-essentials' do
  version '11.2.15'
  sha256 '6dded020e54bcc09054f6eb65cab8e26e6b57452439972d26ee42888f47ecfdd'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
