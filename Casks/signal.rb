cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.36.0"

  if Hardware::CPU.intel?
    sha256 "24563d6a599f160d97a9c9c6f3d129707aec71b5f1ba619ac3a5cf77dec17170"
  else
    sha256 "c01276dd66e569d3b30f30faad52625b3b0e61c8884dd92b2a028742ba73be68"
  end

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
