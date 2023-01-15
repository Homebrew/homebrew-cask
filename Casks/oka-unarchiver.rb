cask "oka-unarchiver" do
  version "2.1.6"
  sha256 :no_check

  url "https://cdn.okaapps.com/resource/download/OkaUnarchiver.dmg"
  name "Oka Unarchiver"
  desc "Free unarchiver"
  homepage "https://okaapps.com/product/1441507725"

  livecheck do
    url "https://okaapps.com/product/1441507725"
    regex(/"softwareVersion": "(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Oka Unarchiver 2 Website.app", target: "Oka Unarchiver.app"

  zap trash: [
    "~/Library/Application Scripts/UFC6W2DD6Z.com.chenhaowu.mac.utility.website.zip",
    "~/Library/Application Scripts/com.chenhaowu.mac.utility.website.zip",
    "~/Library/Application Scripts/com.chenhaowu.mac.utility.website.zip.MZPreviewExtension",
    "~/Library/Application Scripts/com.chenhaowu.mac.utility.website.zip.MZThumbnailProviderExtension",
    "~/Library/Application Scripts/com.chenhaowu.mac.utility.website.zip.finderSyncExtension",
    "~/Library/Containers/com.chenhaowu.mac.utility.website.zip",
    "~/Library/Containers/com.chenhaowu.mac.utility.website.zip.MZPreviewExtension",
    "~/Library/Containers/com.chenhaowu.mac.utility.website.zip.MZThumbnailProviderExtension",
    "~/Library/Containers/com.chenhaowu.mac.utility.website.zip.finderSyncExtension",
    "~/Library/Group Containers/UFC6W2DD6Z.com.chenhaowu.mac.utility.website.zip",
  ]
end
