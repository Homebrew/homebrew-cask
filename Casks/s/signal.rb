cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.3.0"
  sha256 arm:   "ffcc8b4d61dab659133e8141f0d9fa52d4d3007e665d73aaebe188f46fc61506",
         intel: "88f1709444732098a8b3ad14b90117dbb18445ac9854220b829e1f41475d802b"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
