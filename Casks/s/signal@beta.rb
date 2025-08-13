cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.67.0-beta.1"
  sha256 arm:   "fe1fa9d324f1e8f088f7cd845aa85bb7576c0cbcf4295a51fe6a0a7628420b41",
         intel: "a7663350a09d250468953c12fdc642b7bb2019999aba77ddb66152b91e83fbd0"

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
