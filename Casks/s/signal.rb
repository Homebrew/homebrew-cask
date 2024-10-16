cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.29.0"
  sha256 arm:   "ce68edc8f0f5d0ec95527ec43017d6147fe2b08a0dfeed75afcc26621dbbe004",
         intel: "da7da119db81d135cef9b8cf9f3fe0f1cdef8f661722cb3c9527aca1edf448a9"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
