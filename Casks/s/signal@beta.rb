cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.76.0-beta.1"
  sha256 arm:   "9d99476def3b9194c14015e99e06a8bdfad5426967a9622a185bdc246e5ffa21",
         intel: "fbeb8cf46547f59f896cbcffe34d9676cf8b682f0d5ddded0cb920bc95518836"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
