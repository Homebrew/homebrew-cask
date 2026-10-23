cask "loom" do
  arch arm: "-arm64"

  version "0.382.0"
  sha256 arm:   "c96ae312a7864ced46fc925c0d2b5511e8f02b0457ef24c1889d8c4609bfdb49",
         intel: "11908e2152a7ffa2074c8644e7ab33059ff83da5c74e953ba2ef2474ac5b0002"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.loom.desktop.sfl*",
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
