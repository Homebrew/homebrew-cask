cask "diskcatalogmaker" do
  version "9.2.2"
  sha256 "8ab2ec5dea53b97afcab1873a5532dd2ddc98ddabe393bea58be20054017b58b"

  url "https://diskcatalogmaker.com/download/zip/DiskCatalogMaker#{version.no_dots}.zip"
  name "DiskCatalogMaker"
  desc "Disk management tool"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://update2.diskcatalogmaker.com/info/appcast/DiskCatalogMaker.xml"
    strategy :sparkle, &:version
  end

  auto_updates true

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
