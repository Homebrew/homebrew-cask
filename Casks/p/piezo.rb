cask "piezo" do
  version "1.9.1"
  sha256 :no_check

  url "https://rogueamoeba.com/piezo/download/Piezo.zip"
  name "Piezo"
  desc "Audio recording application"
  homepage "https://rogueamoeba.com/piezo/"

  # The Sparkle feed contents varies based on the provided [macOS] `system`
  # value (e.g., 1441 for 14.4.1) and we only receive an older version if we
  # omit it. If we use a hardcoded `system` value, eventually the `livecheck`
  # block can get stuck on an older version until the `system` value is updated
  # to a newer macOS version. To avoid this, we simply check the versions listed
  # on the related Support Center page.
  livecheck do
    url "https://rogueamoeba.com/support/knowledgebase/?showCategory=Piezo"
    regex(/Piezo\s+v?(\d+(?:\.\d+)+)/im)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Piezo.app"

  uninstall quit: "com.rogueamoeba.Piezo"

  zap trash: [
    "~/Library/Caches/com.rogueamoeba.Piezo",
    "~/Library/HTTPStorages/com.rogueamoeba.Piezo",
    "~/Library/Preferences/com.rogueamoeba.Piezo.plist",
    "~/Library/WebKit/com.rogueamoeba.Piezo",
  ]
end
