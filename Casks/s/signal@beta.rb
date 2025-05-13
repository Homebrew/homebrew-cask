cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.55.0-beta.1"
  sha256 arm:   "6256ad624dabcc926d0b3bfd31516612cd956b98eb24573f80b6dc388ed2766e",
         intel: "fe7cbf015e2ab8645cdf970ace4fbb9b45d9c351f3cd704c0f98bf02a6e874e8"

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
