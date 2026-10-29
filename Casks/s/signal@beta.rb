cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.34.0-beta.1"
  sha256 arm:   "6bb43ea652de0e48064820bf616b19263781f449a7752c24268e95e1e5953384",
         intel: "285ddd2a658d4ae72e8bb3589d282b37cd1ac57cb2cea153e7063fbe808b9860"

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
