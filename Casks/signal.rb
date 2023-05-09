cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.17.0"
  sha256 arm:   "b622cce084bed2d69f4cb7e69a0f84db707d4c1a3db8eb61956a89406a0c68b4",
         intel: "70fe730b3352217325b92b76afcda8cfb3416928e4d4b8039f902dc808439158"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
