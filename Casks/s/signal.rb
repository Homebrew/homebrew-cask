cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.19.0"
  sha256 arm:   "f6f91783d4c1df2b4e9ffb30f6b854879884beb238204817dada372b7ac8deed",
         intel: "939541499b51319ea7a1210dda9771cbdd086e0fbda77928e8b68ed3219a27ea"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
