cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.4.916"
  sha256 arm:   "075c2cb99cab9393bb7d65b6337f5ba53232abb5eb7419f65f8b3130dcf23df1",
         intel: "72c2f8d7ee496264ed851127b8eb6bd209dd7cd96e7c81d1dbf7de6e6f500845"

  url "https://updates.alma.now/alma-#{version}-mac-#{arch}.dmg"
  name "Alma"
  desc "AI chat application"
  homepage "https://alma.now/"

  livecheck do
    url "https://github.com/yetone/alma-releases"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    throttle days: 1
  end

  auto_updates true
  depends_on macos: :monterey

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.alma",
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
