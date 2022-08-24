cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.56.0"
  sha256 arm:   "95321eae20ea42a3882afa41bc711562f0b9ddcad6448c14f059bd96505e478b",
         intel: "80f77b635402201cfbd082529cad46c48ca44a94cb0e9a9390eed28f975c6c9a"

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
