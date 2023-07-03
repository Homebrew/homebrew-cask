cask "diskcatalogmaker" do
  version "8.6.7"
  sha256 "9f94982799dd2fd0814baef6b2e274a797b285a7b4b873411f9365f3bd49a8e8"

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
