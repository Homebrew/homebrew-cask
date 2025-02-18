cask "loom" do
  arch arm: "-arm64"

  version "0.276.3"
  sha256 arm:   "d3f790ac7fcc889eeb0c4c55806fb0a142a251aa229fe6247e5a9fd109da63d2",
         intel: "5eb39b343ebbd4d1c8956ce704d5d49e13084b121d192c070873215785938b98"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
