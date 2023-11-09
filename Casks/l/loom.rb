cask "loom" do
  arch arm: "-arm64"

  version "0.184.1"
  sha256 arm:   "7d9f71f1957dab023213d71bab9594bb27da8f1d5ff98288fae96fb25ab36bac",
         intel: "df7e5a40dda25fffe3f8da780278ad05c1d93960ef0213273f8903816a9244c5"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
