cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.50.1"

  if Hardware::CPU.intel?
    sha256 "838a8a1c1d18911e009fe0160be8053da9c5338418fcdb007560788f085cff4d"
  else
    sha256 "232bd9d382237266607495ad67bac2cc0aed45349d07311d947ab5a3795ce4c2"
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
