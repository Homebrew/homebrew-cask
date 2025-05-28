cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.56.0"
  sha256 arm:   "259f4b2c8d40ee14311400a82fa8bedc28c7440009ffc4108236b500325ea78a",
         intel: "4170f3595c02b86bfc549dab6af0fa902ae2181ad8bec16d747f96b6cb2568c9"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
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
