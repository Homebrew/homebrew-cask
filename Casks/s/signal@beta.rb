cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.66.0-beta.1"
  sha256 arm:   "e5444745c1b6b7cd8b4874680cfcb860c743223bfc900fb5dcd665c06f2f2da0",
         intel: "63acdeae8c40582c13abe396ab73eac57474568ae50ba4d7b2347fb63a5909af"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
