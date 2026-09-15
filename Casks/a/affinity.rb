cask "affinity" do
  version "3.3.0,4850"
  sha256 "317f5cf64a5364319898576b4648b6a96dc9ec39f50039aebf9901b7ed3a5d96"

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
