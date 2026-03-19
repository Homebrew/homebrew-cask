cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.4.0-beta.1"
  sha256 arm:   "9dcfd38129f74a209190b92d068a5921d06625cfcf7f80c2d85cafa3e728a48e",
         intel: "7ca4d9a6e04d2b9e040d20867a323bced74afb58ffbc1da7e1868c2ba474fa0f"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
