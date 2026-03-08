cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.1.0"
  sha256 arm:   "b614f8a6bc94e1daa2b4b77a1c7f1807a59e1fe06b30f797ef3e0f8f26dd076e",
         intel: "00e4bcddfea0b2e41a1b9875234b7c9ee57e3b1772f21fe8c4525a3dbbaf12bc"

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
