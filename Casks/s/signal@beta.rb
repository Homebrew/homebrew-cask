cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.58.0-beta.1"
  sha256 arm:   "e046a83b8e9feb9a40197937c5f8fde33002314d44b280fa9113c7e58e12688f",
         intel: "a062b46727d04492bf3f8a4cd792e0ef6831850bf480d5bdcb79319f144edf38"

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
