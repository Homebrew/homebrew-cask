cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.39.0-beta.1"
  sha256 arm:   "3a0f3165bbce76310093d6838d79213dd5bb22ae9ad86f84a960018a8fce0ae5",
         intel: "9b41750738a1fb03390b6cd3fccbcde6cf3e69282bb8fd429f83c96bbc27ebf7"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
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
