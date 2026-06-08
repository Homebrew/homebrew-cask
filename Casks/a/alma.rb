cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.810"
  sha256 arm:   "c3f960504dd543af40cc1d0816d76d2491b9e714e83958a0f58decb6c5da9839",
         intel: "18531a9dc605933c30d4329c511ccff693982bf8fdd65e08c6f7739449e8d781"

  url "https://updates.alma.now/alma-#{version}-mac-#{arch}.dmg"
  name "Alma"
  desc "AI chat application"
  homepage "https://alma.now/"

  livecheck do
    url "https://github.com/yetone/alma-releases"
    strategy :github_releases
    throttle 15
  end

  auto_updates true
  depends_on macos: :monterey

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.cache/alma",
    "~/.config/alma",
    "~/Library/Application Support/alma",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yetone.alma.sfl*",
    "~/Library/Caches/alma-updater",
    "~/Library/Caches/com.yetone.alma",
    "~/Library/Caches/com.yetone.alma.ShipIt",
    "~/Library/HTTPStorages/com.yetone.alma",
    "~/Library/Preferences/ByHost/com.yetone.alma.ShipIt.*.plist",
    "~/Library/Preferences/com.yetone.alma.plist",
  ]
end
