cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.0.69"
  sha256 arm:   "4d832da41eaac137f10729c82dd9ebe65af50c65afade9cf8e3e0c684c1b8c4c",
         intel: "4d0641c2094dc0e9e850ace16de5a133db6295af6aff9d451e358c14b5787f39"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "https://update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
