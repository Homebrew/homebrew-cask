cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.32.0"
  sha256 arm:   "957127a2004754ef25eb86dd06dd4a09469084e0adbcbaa5a612eb23feaa1813",
         intel: "0947fd291a0c932b35af2690fc6672eb0731ef883a7bf50598d65a7b97fb2230"

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
