cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.2.18"
  sha256 arm:   "3cd9e051b9535bdd8e3abc3e7fd32e055622577f6df7b27dbfb5c82d1725db64",
         intel: "1fe4f1fb78a2e29bff1767e71c0adae7094d74b9f816903e837d5a581d6061c7"

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
