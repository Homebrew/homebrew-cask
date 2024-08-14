cask "loom" do
  arch arm: "-arm64"

  version "0.247.3"
  sha256 arm:   "049bf0ca2ddbabeaea8bdb019774b671552da3d1cde1267b6a35ab3669f99788",
         intel: "4d465d8574f5260f032aa8b563610d1d6bb640238aa8bc711a1135c0419e53de"

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
