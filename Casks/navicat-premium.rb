cask 'navicat-premium' do
  version '12.0.26'
  sha256 '5ea1823be5269b9e4838a3e5000143625db18828959afacb6356ab9461828cb2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '3763059d158942dc11cf54311397f1dfda9ffcb7a4c1a526cfd885d00328b719'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
