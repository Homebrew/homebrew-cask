cask "loom" do
  arch arm: "-arm64"

  version "0.224.0"
  sha256 arm:   "ed43547acadc5eb343e255bc306cd2f0adfb825d1ee57f44e83c1918ad1e74eb",
         intel: "5363bfd006bf07cd16377f2b6fa8684f6f3df43cf2ed74f0614f2250c4631a31"

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
