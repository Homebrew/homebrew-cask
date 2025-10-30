cask "affinity" do
  version "3.0.0,3791"
  sha256 "903880c822d62962089eef54b94605dde17dc1fef47fd15267caacf6d1853d5f"

  url "https://affinity-update.s3.amazonaws.com/mac2/retail/Affinity%20Affinity%20Store%20#{version.csv.second}.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity"
  desc "Image editing and design software"
  homepage "https://www.affinity.studio/"

  livecheck do
    url "https://things.seriflabs.com/affinity-update-mac-retail-studiopro"
    strategy :sparkle
  end

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
