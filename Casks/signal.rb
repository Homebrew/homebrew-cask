cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.50.0"

  if Hardware::CPU.intel?
    sha256 "425aed77cb621ef818da690930366863fea1faa0f4c93430152d505856cb9553"
  else
    sha256 "d3a4ff3330865f3e83069208f865004f459f48df3a6d9d830e8a59b6c2077e0c"
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
