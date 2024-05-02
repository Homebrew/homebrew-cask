cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.7.0"
  sha256 arm:   "f51ca7f2246ac75a7856aaa1aea9d8898d618cfb7dc09138a78f5217839b4d1b",
         intel: "e5fcdc81fdfabc546f305c6cda0156c5a11b8a0caf20ee9ab8d02b17102b5fe5"

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
