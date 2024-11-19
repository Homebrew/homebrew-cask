cask "cloudmounter" do
  version "4.10"
  sha256 :no_check

  url "https://cdn.electronic.us/products/cloudmounter/mac/download/cloudmounter.dmg",
      verified: "cdn.electronic.us/products/cloudmounter/mac/download/"
  name "Eltima CloudMounter"
  desc "Mounts cloud storages as local discs"
  homepage "https://mac.eltima.com/mount-cloud-drive.html"

  livecheck do
    url "https://cdn.electronic.us/products/cloudmounter/mac/update/settings.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CloudMounter.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eltima.cloudmounter.sfl*",
    "~/Library/Application Support/com.eltima.cloudmounter",
    "~/Library/Caches/com.eltima.cloudmounter",
    "~/Library/Logs/CloudMounter.log",
    "~/Library/Preferences/com.eltima.cloudmounter.plist",
  ]
end
