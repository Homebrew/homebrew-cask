cask 'asset-catalog-tinkerer' do
  version '2.5.1'
  sha256 '75788e83f27ba5d2fc76916339b2f39eb1d5b233cce5e5bd39dbc0461e4d513a'

  url "https://github.com/insidegui/AssetCatalogTinkerer/releases/download/#{version}/AssetCatalogTinkerer_v#{version}.zip"
  appcast 'https://github.com/insidegui/AssetCatalogTinkerer/releases.atom',
          checkpoint: '9acaca3d75d331c50c6922c8ef5d968f9eb0dd8b26a847a33e66e24fcf992601'
  name 'Asset Catalog Tinkerer'
  homepage 'https://github.com/insidegui/AssetCatalogTinkerer'

  app 'Asset Catalog Tinkerer.app'
end
