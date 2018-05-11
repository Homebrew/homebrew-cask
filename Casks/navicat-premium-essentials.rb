cask 'navicat-premium-essentials' do
  version '12.0.26'
  sha256 '6be93aefc82c02f6b185a47a142b158ac527847cec80e89a403b38cae48e76a7'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '3763059d158942dc11cf54311397f1dfda9ffcb7a4c1a526cfd885d00328b719'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
