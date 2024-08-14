cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.10.114"
  sha256 arm:   "00e39d88535ad80a8a1a4e55d002003797a87939a3ddc892caa96d42327119f7",
         intel: "da7759e5b8a9ff735c6e8219f514e83e2de4a4e733998516c7efc8ef8d41f643"

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
