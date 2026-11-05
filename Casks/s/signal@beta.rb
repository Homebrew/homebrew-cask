cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.35.0-beta.1"
  sha256 arm:   "cfc5aae6c638d355b8aedf31ebe56c16ae67da2cd5f2677a69cd680055d3b13b",
         intel: "68854cee85f0363843551a84f929e5a34f6eddbfada6389f05a839bb6797057e"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.whispersystems.signal-desktop-beta.sfl*",
    "~/Library/Application Support/Signal Beta",
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop-beta.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
