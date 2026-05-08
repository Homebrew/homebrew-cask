cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.9.1"
  sha256 arm:   "2a6268bc5bb8c372a17635b441ea6c6a41b7b1ff0a577904f04955596a664987",
         intel: "ccc5ce1752aa110ff3b27e3acff9fc3bc2cc50d10e94ddc21199a8131ef6cb29"

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
