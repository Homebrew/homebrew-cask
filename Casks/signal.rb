cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.53.0"

  if Hardware::CPU.intel?
    sha256 "371d508892f8e96e8bc6d60164148fdf0a8fde1e7e7e82cf8fb4fbb83a1b2b26"
  else
    sha256 "eab98c584e405781a587890006c59e02c9a1b22d66705f3fc03064d247c04fde"
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
