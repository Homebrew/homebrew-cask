cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.28.0"

  if Hardware::CPU.intel?
    sha256 "48cc3c8fa1fe36726b5ad8b687047cc7c7f22beca6fc9a6272df13d138311a9f"
  else
    sha256 "ddb333d8829f6996d31b6f40fcd7d6396ba7ce83f4f2a219e1f4a8dcf8b49de7"
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
