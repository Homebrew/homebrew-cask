cask "asset-catalog-tinkerer" do
  version "2.9"
  sha256 "ab18ece5d597960f9002c84cc800b61b2b22f4f61a63d6695dac378340ded5c0"

  url "https://github.com/insidegui/AssetCatalogTinkerer/releases/download/#{version}/AssetCatalogTinkerer_v#{version}-#{version.no_dots.ljust(3, "0")}.zip"
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
