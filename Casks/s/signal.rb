cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.77.1"
  sha256 arm:   "10b07791c8b8e7dfbeca98608a0718c0d9fa2183f9fe034bc41af49abaa93123",
         intel: "15bd89bd9930b5dd042ca1de22039d0bfde1c15225de9070bae315a20ffb76e4"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
