cask "asset-catalog-tinkerer" do
  version "2.7"
  sha256 "2034e46b75d7a156d917b1a82b510674d037199826a3c86390f37540ee15cd4b"

  url "https://github.com/insidegui/AssetCatalogTinkerer/releases/download/#{version}/AssetCatalogTinkerer_v#{version}.zip"
  name "Asset Catalog Tinkerer"
  desc "Browse/extract images from .car files"
  homepage "https://github.com/insidegui/AssetCatalogTinkerer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Asset Catalog Tinkerer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/br.com.guilhermerambo.asset-catalog-tinkerer.sfl*",
    "~/Library/Preferences/br.com.guilhermerambo.Asset-Catalog-Tinkerer.plist",
  ]
end
