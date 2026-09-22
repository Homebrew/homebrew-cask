cask "loom" do
  arch arm: "-arm64"

  version "0.378.0"
  sha256 arm:   "92e3d5b5e97a60e06991076708af9ef58ca3f7a6dead971835369ff54fa95966",
         intel: "2de098cfd5645905ec0778e0985b57d9d31e63bb03c3e44e19a2d9757396ef19"

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
