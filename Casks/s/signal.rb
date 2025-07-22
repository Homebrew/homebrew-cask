cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.63.0"
  sha256 arm:   "0c6e419da30b934eb981a7dd1336ebadff00714d53fa8c12fd79c8cc7e5ca3ba",
         intel: "4bce9034ac83c6c86e2bb1165f131d27720d987190bd9e27e5f07fe1f4f8529c"

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
