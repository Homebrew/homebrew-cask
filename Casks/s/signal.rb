cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.26.0"
  sha256 arm:   "91dafd07190fe3c8fe9b032b7e2ed72425dd6411cbb79509ef1fa72d99a4ce32",
         intel: "c9625a64e3635eba6d03bf2c5adce87185e82c7b8d8800e5622a719e7e48f10b"

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
