cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.2.0"
  sha256 arm:   "58ac53dbf9e0d6d228e5a29a6c5f8b29d39e25963aa367d9a90008ae25b396e6",
         intel: "88b21f53c0530f845b1573bef035412d53f48ab195af8b3a81baaa8071370653"

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
