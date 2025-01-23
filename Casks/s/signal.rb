cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.39.0"
  sha256 arm:   "9706384a990b97cdc9fd108e3f7dc83ed1079a278be4b8f371e7ac451489c882",
         intel: "412b7590ed4730da9307a71577209b9cdae93e6f08d7615ad799fb83ede840d7"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
