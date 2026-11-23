cask "diskcatalogmaker" do
  version "9.3.2"
  sha256 "296812ec0df35a3866baf3878adec176de141918ed5c9b0a897b612b4036590e"

  url "https://diskcatalogmaker.com/download/zip/DiskCatalogMaker#{version.no_dots}.zip"
  name "DiskCatalogMaker"
  desc "Disk management tool"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://update2.diskcatalogmaker.com/info/appcast/DiskCatalogMaker.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: :monterey

  app "DiskCatalogMaker.app"

  uninstall quit: "com.mac.fujisoft.DiskCatalogMaker"

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
