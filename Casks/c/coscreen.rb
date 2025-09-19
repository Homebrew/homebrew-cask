cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.8.5"
  sha256 arm:   "250eecb3bb17a6f8e23265a9218eabec8842653339881576dbf745e1fbd9aad5",
         intel: "9fd4cbafa3a1229834341870cdfc75bfbbd0d5886097985ad9684f80b4f61f85"

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
  depends_on macos: ">= :ventura"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
