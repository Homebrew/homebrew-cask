cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.73.0-beta.2"
  sha256 arm:   "439eebff1b5e5bea7453f17dd236d22a0d4fdab67bb85e2bb5c1e7ce551e1a8b",
         intel: "544fa02f3626779d7bbfdcb0591a53c24487cbeb408a67efba384cdfedff184e"

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
