cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.1.57"
  sha256 arm:   "5cdf2c8a77b5d494bb7df75e05e7810824f2b59d3e145ec65c54d67dce0f6cda",
         intel: "0bcbf883f8ceeccd27ea38f8e628295c6b2ad7468bfb124f0df4f06c64636409"

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
