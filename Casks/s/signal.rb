cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.10.0"
  sha256 arm:   "0cd01b5f8d4e9d341e6ddcdd67a1ce33147f7a8e459d80eda5052f4c60753bcf",
         intel: "c5b4cd02b3a127f131bfaacf3fd2e52c2c3ab9feb5dad8012b55e03718f56a47"

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
