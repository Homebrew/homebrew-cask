cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.43.0"
  sha256 arm:   "9a12163e809e6359a429da54416d2ae4efc125f530bd4b4eb496b35f5ffcbf8b",
         intel: "4c9a92e45cb79d86b3984b783c8bf2990ecdb7373fad3aa7311cf061652e0564"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
