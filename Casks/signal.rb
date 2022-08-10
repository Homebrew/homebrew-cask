cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.54.0"

  if Hardware::CPU.intel?
    sha256 "af1f384ba44767f6416fa23b9149329e491f9c151ca3c8bc75e7c61a8faf1306"
  else
    sha256 "c18ed71e164316122053ab037249583d84cc9baa7fc088427735ec08881c51b0"
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
