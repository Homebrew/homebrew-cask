cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.40.1"

  if Hardware::CPU.intel?
    sha256 "e85201a025d81b200442b9c9603d7def902a19a3688b7e3cd5129eec888f83a0"
  else
    sha256 "df0c97d29d6fa9489fa5c809489001c69e978c42a051ae70464173857be058e0"
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
