cask 'elyse' do
  version '4.0.1'
  sha256 '4741a9d1ebf8d707489b2282a3ac0be3d5ea3c60042db2f3443b6b04412b1465'

  url "https://silkwoodsoftware.com/Elyse-#{version.no_dots}.dmg"
  appcast 'https://silkwoodsoftware.com/download.html'
  name 'Elyse'
  homepage 'https://silkwoodsoftware.com/'

  app 'Elyse.app'
end
