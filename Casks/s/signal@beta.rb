cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.34.0-beta.1"
  sha256 arm:   "2146a33638d0e19b2e738a850f12e3d05e0efd44fd8c4e2effd48aaf9ceffaec",
         intel: "f40143401dbf61bf9663f737eff822581328a4213dfceaecd69830f24cf64124"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
