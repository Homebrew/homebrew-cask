cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.38.0"

  if Hardware::CPU.intel?
    sha256 "40fd909a2fae4e69d3043ca930f18f0c389f6f4e563e0db6a528bfe537086866"
  else
    sha256 "ab50283b8729391b0c36d3a11641f08688b08d05e710d6941dcf5de59023f50f"
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
