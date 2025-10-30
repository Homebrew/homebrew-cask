cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.78.0-beta.1"
  sha256 arm:   "47f56d69bac98408c4dd21bad61d6149aeaff6e70c75eab2805e5f902ec6c7b1",
         intel: "ca95c631f4742bdde9f7bb32d683ff8b91578c1c8baa6797619c75c3340cc28a"

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
