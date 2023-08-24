cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.29.1"
  sha256 arm:   "f516f15c3252b3628fca58abfab0e1ca9d40f0786ad9c3c6cba00414a1ff8ab9",
         intel: "ec723e67d597a94d8b46283ccac1324cdcdfeb1698029bfe2f19da8eae7a0388"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
