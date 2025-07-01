cask "qview" do
  version "7.0"
  sha256 "87a27f000dff7aed3e63a3da55a0a0f33637aec3b29556e5283de7a3e393a58b"

  url "https://github.com/jurplel/qView/releases/download/#{version}/qView-#{version}.dmg"
  name "qView"
  desc "Image viewer"
  homepage "https://github.com/jurplel/qView/"

  depends_on macos: ">= :monterey"

  app "qView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.interversehq.qview.sfl*",
    "~/Library/Preferences/com.interversehq.qView.plist",
    "~/Library/Preferences/com.qview.qView.plist",
    "~/Library/Saved Application State/com.interversehq.qView.savedState",
  ]
end
