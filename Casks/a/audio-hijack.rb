cask "audio-hijack" do
  version "4.4.0"
  sha256 :no_check

  url "https://rogueamoeba.com/audiohijack/download/AudioHijack.zip"
  name "Audio Hijack"
  desc "Records audio from any application"
  homepage "https://rogueamoeba.com/audiohijack/"

  # The Sparkle feed contents varies based on the provided [macOS] `system`
  # value (e.g., 1441 for 14.4.1) and we only receive an older version if we
  # omit it. If we use a hardcoded `system` value, eventually the `livecheck`
  # block can get stuck on an older version until the `system` value is updated
  # to a newer macOS version. To avoid this, we simply check the versions listed
  # on the related Support Center page.
  livecheck do
    url "https://rogueamoeba.com/support/knowledgebase/?showCategory=Audio+Hijack"
    regex(/Audio\s+Hijack\s+v?(\d+(?:\.\d+)+)/im)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Audio Hijack.app"

  uninstall quit: "com.rogueamoeba.audiohijack"

  zap trash: [
    "~/Library/Application Support/Audio Hijack #{version.major}",
    "~/Library/Caches/com.rogueamoeba.audiohijack/",
    "~/Library/HTTPStorages/com.rogueamoeba.audiohijack/",
    "~/Library/Preferences/com.rogueamoeba.audiohijack.plist",
    "~/Library/WebKit/com.rogueamoeba.audiohijack/",
  ]
end
