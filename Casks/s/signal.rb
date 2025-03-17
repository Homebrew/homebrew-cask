cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.46.1"
  sha256 arm:   "5f0dfa96ca79df96beb8b0e9be4fdc8bf8ee0b7cbec66f34c508c55b8b48fc0b",
         intel: "003ba6be7e55cedde53ed4426ae9620dc8df790181f6063c2807cc6c0b9d0f40"

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
