cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.36.0-beta.1"
  sha256 arm:   "94d640be24c12d67be374c77fce5d35c788a75e3a43863831afa04e18cfface6",
         intel: "b3c07cb0cf96c04cbf0446c8478e67efdfe4a48eae379c19d08c714c2fd700b6"

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
