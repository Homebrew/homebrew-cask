cask "loom" do
  arch arm: "-arm64"

  version "0.328.1"
  sha256 arm:   "8c5d386b36698925a67d55f40956ebd47dcc1e59c884647867d2b2c31a7c838f",
         intel: "012acde1928c47f97c01624a69ab8eeab70c1064af44cb2f47a3c53b8edafd74"

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
