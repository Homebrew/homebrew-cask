cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.4.7"
  sha256 arm:   "7ec8449d4448ec80667a42eaa68d6347d76b0dfeaa5c6275b71791c6f0313b1e",
         intel: "e4e5309b4c00bde75bdf9451137c84d5d12a260114fa2ba31b0490925e8e5762"

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
