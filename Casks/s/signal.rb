cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.11.0"
  sha256 arm:   "0471d7c3a83bedcce6e93e5c83adf9b6153d76c3ae73649e5dc580466ace95d2",
         intel: "44f95c99d6bc7672d617187190d252a828203ca4a6de28ca233b0fb4772e9fd3"

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
