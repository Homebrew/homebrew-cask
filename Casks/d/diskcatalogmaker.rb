cask "diskcatalogmaker" do
  version "9.1.2"
  sha256 "0c48aa5686c9c7ab419533bd2cece0f494227dbb66606cf840e98738d11a1ce8"

  url "https://download.diskcatalogmaker.com/download/zip/DiskCatalogMaker#{version.no_dots}.zip"
  name "DiskCatalogMaker"
  desc "Disk management tool"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://update2.diskcatalogmaker.com/info/appcast/DiskCatalogMaker.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "DiskCatalogMaker.app"

  zap trash: [
    "~/Library/Application Support/com.mac.fujisoft.DiskCatalogMaker",
    "~/Library/Application Support/DiskCatalogMaker",
    "~/Library/Caches/com.mac.fujisoft.DiskCatalogMaker",
    "~/Library/Caches/DiskCatalogMaker",
    "~/Library/Logs/DiskCatalogMaker",
    "~/Library/Preferences/com.mac.fujisoft.DiskCatalogMaker.plist",
    "~/Library/Saved Application State/com.mac.fujisoft.DiskCatalogMaker.savedState",
  ]
end
