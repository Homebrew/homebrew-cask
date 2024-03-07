cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.1.0"
  sha256 arm:   "184f6da90737cd4e3f166b392a652e8b43f9b6667963b191902574e3061a604c",
         intel: "bc46db136cf030242e595e3b737799140d9162fe8fc7e489e3a1316d9f1905e2"

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
