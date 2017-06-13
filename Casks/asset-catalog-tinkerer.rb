cask 'asset-catalog-tinkerer' do
  version '2.5'
  sha256 '2efdd8039fcd68474bbbb20962c5e73328da75b2a9bd4f4145d8e3b2603775af'

  url "https://github.com/insidegui/AssetCatalogTinkerer/releases/download/#{version}/AssetCatalogTinkerer_v#{version}.zip"
  appcast 'https://github.com/insidegui/AssetCatalogTinkerer/releases.atom',
          checkpoint: 'e4eddf825266995ad02b1bb1eaef219aa00d44153ad01a4011b0fca71b2860b1'
  name 'Asset Catalog Tinkerer'
  homepage 'https://github.com/insidegui/AssetCatalogTinkerer'

  app 'Asset Catalog Tinkerer.app'
end
