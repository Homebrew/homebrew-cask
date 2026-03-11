cask "loom" do
  arch arm: "-arm64"

  version "0.337.5"
  sha256 arm:   "2f84080f542fd160c857cdf0339a4a100fc833b35138a824209b6e0a14dad361",
         intel: "4046aac92930a44cafc2c31f38437c2ac1dd99227b2d8421a2e42eaec82519b5"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
