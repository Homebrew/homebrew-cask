cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.1.65"
  sha256 arm:   "5906acda3934f35c3971a660ed5c62cc7edcc02e32526e620d0ba2149f3ec3b6",
         intel: "92b219a93d0258a2af8fe86f5a4ba619a8ad720a087fd831708778d00dcb0696"

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
