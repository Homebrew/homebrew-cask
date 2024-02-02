cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "6.4.16"
  sha256 arm:   "0506e8bee58aa73ba8364249ef49b4ff0841b798e03941ae8fae9950af74a2c7",
         intel: "1155e29391591cc963deb2b6bafe4686585961cf3738d73cc7aa8858e889b1f5"

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
