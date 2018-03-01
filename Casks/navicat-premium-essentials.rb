cask 'navicat-premium-essentials' do
  version '12.0.23'
  sha256 '1238b9bb7be964f4ac3dd5d7d10b905a9597670fe58a00a0bb282135bca5e1d3'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '2f3da54482b2def2a5b368508747475c463bda9a1b5080a8d7da45654e3f7087'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
