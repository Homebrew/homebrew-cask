cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.2.39"
  sha256 arm:   "0337a69ba6fa7f9ada820395ba4e3f6b41428945f0e35e30bbc2cb1b32f41624",
         intel: "5174e5bd29284cfb58b7b3f835cd8825ebc7c2a2069b8cb6b3da68d5cdc74263"

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
  depends_on macos: ">= :mojave"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
