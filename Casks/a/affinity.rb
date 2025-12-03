cask "affinity" do
  version "3.0.2,3912"
  sha256 "5addd72d646ab15e2ebfa99c3d79cfb7989c016524e751edf9c8fb695c0aa8f4"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity"
  desc "Image editing and design software"
  homepage "https://www.affinity.studio/"

  livecheck do
    url "https://things.seriflabs.com/affinity-update-mac-retail-studiopro"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity.app"

  zap trash: [
    "~/Library/Application Scripts/5HD2ARTBFS.com.canva.affinity",
    "~/Library/Application Scripts/com.canva.affinity.*",
    "~/Library/Application Support/Affinity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.canva.affinity.sfl*",
    "~/Library/Caches/com.canva.affinity",
    "~/Library/Containers/com.canva.affinity.*",
    "~/Library/Group Containers/5HD2ARTBFS.com.canva.affinity",
    "~/Library/HTTPStorages/com.canva.affinity",
    "~/Library/HTTPStorages/com.canva.affinity.*",
    "~/Library/Preferences/com.canva.affinity.plist",
    "~/Library/WebKit/com.canva.affinity",
  ]
end
