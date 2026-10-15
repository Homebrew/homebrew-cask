cask "loom" do
  arch arm: "-arm64"

  version "0.380.6"
  sha256 arm:   "942670cdc4dc5e9ba035a26fccd510624063b57095355ff05c794d711d567d00",
         intel: "cf3bf77eac38993d548a46e3b0c41c634f9cd5c46ee1320231a23c91d1d5d0e4"

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
