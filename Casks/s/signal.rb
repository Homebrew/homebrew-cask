cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.2.0"
  sha256 arm:   "3936ffaecaaab2b4a7481a71b255748d280166f77d7cdf57abec4681b1e59c3a",
         intel: "9122fcde4e494c8495f2ac9eae9ed7ed3f2325401cb6914a69ea7647e1609c0c"

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
