cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.47.0"

  if Hardware::CPU.intel?
    sha256 "cf0a32363378adda9caf2449de013885a7ee60e9501472fcdfa94817783063ce"
  else
    sha256 "4611e6323b8f540a96f12c6ebbf17f340cd224d2f011fe3e44cc656d3373d053"
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
