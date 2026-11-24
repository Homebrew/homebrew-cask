cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1092"
  sha256 arm:   "a87914f75a467c8f495737d588a1b6ce2ddac93d1f0f9b25397532b9c0e3361f",
         intel: "a7a9725db2c06ed8dd9925bfe3efe0d92c851cc64b5ba62ec7341c593914f77a"

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
