cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.4.0"
  sha256 arm:   "38c7dd5eaa36b7108cf13dc12bccafcc9b6144d21a14e9f324cab2b8605a5f21",
         intel: "c847f8b279c0c165baa52e8e40dd03bb4d997555e46736791e269e156dd59947"

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
