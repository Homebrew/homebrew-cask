cask "affinity" do
  version "3.3.1,4940"
  sha256 "c4714eaab9e312dfcc5ab7e37ec7276a702a2a74daedcb98a08e54ac0abe8248"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Affinity%20Store%20#{version.csv.second}.zip"
  name "Affinity"
  desc "Image editing and design software"
  homepage "https://www.affinity.studio/"

  livecheck do
    url "https://things.seriflabs.com/affinity-update-mac-retail-studiopro"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

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
