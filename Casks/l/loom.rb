cask "loom" do
  arch arm: "-arm64"

  version "0.363.0"
  sha256 arm:   "996769e8f19f9356e4f3905de56cbcdf4a44a711c1a7bf714c7077b5dbc57bab",
         intel: "1ef567b42a6994d6343821cd971eb623c2eb705d6c5dc54a5252ae56de6d73c7"

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
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
