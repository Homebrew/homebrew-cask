cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.11.0"
  sha256 arm:   "cf844ed20ac79ad4d882572a4967ab5cb435d3df8960e78f0c1d53d279064f2b",
         intel: "1fcf4a0408ed320d27b63ea53dad2ebce041a453d92dff50f9e8f4030b77fac5"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
