cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.6.10"
  sha256 arm:   "7a290f4f7379a955f064fe011521b461d2ab4fe16515fcca97ff858e160d394e",
         intel: "7c5b19488737a02e7273957b19c3c04a61a85cad28ccea8059278d4a87f8dceb"

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
