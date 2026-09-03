cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.26.0"
  sha256 arm:   "746090d935d5480966f15ac618f6d3917a094a3472e36e1605797f2734faf413",
         intel: "02b54a241b571db0e4fbc4e5c23dbd67a96105e6f36bd866ce4c03e5c7aabc36"

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
