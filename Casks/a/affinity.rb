cask "affinity" do
  version "3.0.3,4027"
  sha256 "c16f45f4596b61f779ee237ee2f11fd10fc61569e7a7643a94b481e46494d7ff"

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
