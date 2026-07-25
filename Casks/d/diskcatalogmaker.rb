cask "diskcatalogmaker" do
  version "9.2.7"
  sha256 "9bbb8621b99e1857fff856218c55f67273fad396641e8d209c4349aa66ca17b5"

  url "https://diskcatalogmaker.com/download/zip/DiskCatalogMaker#{version.no_dots}.zip"
  name "DiskCatalogMaker"
  desc "Disk management tool"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://update2.diskcatalogmaker.com/info/appcast/DiskCatalogMaker.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on :macos

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
