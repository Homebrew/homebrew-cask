cask 'asset-catalog-tinkerer' do
  version '2.5'
  sha256 '2efdd8039fcd68474bbbb20962c5e73328da75b2a9bd4f4145d8e3b2603775af'

  url "https://github.com/insidegui/AssetCatalogTinkerer/releases/download/#{version}/AssetCatalogTinkerer_v#{version}.zip"
  appcast 'https://github.com/insidegui/AssetCatalogTinkerer/releases.atom',
          checkpoint: 'a1a11ef5ebe65978f31dd93039911862022963f4e8600c7c131986a6980dbb67'
  name 'Asset Catalog Tinkerer'
  homepage 'https://github.com/insidegui/AssetCatalogTinkerer'

  app 'Asset Catalog Tinkerer.app'
end
