cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.78.0"
  sha256 arm:   "b9ff9e92f53cc74f0114ef931549a2d44b76e75e79ab4c808934dcfccb7f985f",
         intel: "ac4bc7c09ab210145ded2ac1cce4ece874a3cadb10cb32171f6c18aba3129ddb"

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
