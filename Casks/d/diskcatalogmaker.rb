cask "diskcatalogmaker" do
  version "9.0.5"
  sha256 "f38376da9de4c24bd6015a9b878d57e383bd6e48184da1fcb6097d30a8be4ca9"

  url "https://download.diskcatalogmaker.com/download/zip/DiskCatalogMaker#{version.no_dots}.zip"
  name "DiskCatalogMaker"
  desc "Disk management tool"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(/DiskCatalogMaker(\d+)f?(\d+)\.zip/i)
      next if match.blank?

      "#{match[1].split("", 3).reject(&:empty?).join(".")}.#{match[2]}"
    end
  end

  depends_on macos: ">= :el_capitan"

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
