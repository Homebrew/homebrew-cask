cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.0.3"
  sha256 arm:   "4f784e0bb159aa42395bfc8ba7e3a2bd7d952906cf76e1433e01f5a6f8a8efe6",
         intel: "261c1a1ee1a193978e0ef2539973fb4be1d66c1a90883aa59f8f0a9cdd9e3398"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
