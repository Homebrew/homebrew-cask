cask "loom" do
  arch arm: "-arm64"

  version "0.355.2"
  sha256 arm:   "7999f8af8c4fd2798c39fb8e6dbf2662202694012239da8a8848ae05c54e1c1d",
         intel: "e41dea0d15e3ecd7ecd7d93490707d12892b49d84050bdba798317ab75911717"

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
