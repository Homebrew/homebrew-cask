cask 'elyse' do
  version '4.0.1'
  sha256 '4741a9d1ebf8d707489b2282a3ac0be3d5ea3c60042db2f3443b6b04412b1465'

  url "http://silkwoodsoftware.com/Elyse-#{version.no_dots}.dmg"
  appcast 'http://silkwoodsoftware.com/download.html',
          checkpoint: 'e547e0907e99999e52b81a396ffe5ed60066c670a7109f8ae24c17915c95aabd'
  name 'Elyse'
  homepage 'http://silkwoodsoftware.com/'

  app 'Elyse.app'
end
