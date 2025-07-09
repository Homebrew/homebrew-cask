cask "loom" do
  arch arm: "-arm64"

  version "0.300.1"
  sha256 arm:   "abc14d915a3ccbe77ef26021991fac9c4d79aabc4c320e2821e7063b1ae32a37",
         intel: "6dc56127303f386313f1da1cff80da04a3941ee7ffc7b7a38cf30dcf1ddf686a"

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
