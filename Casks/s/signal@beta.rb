cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.26.0-beta.1"
  sha256 arm:   "1137222be65b6c0116cc35beda45a33b84acb651ce8d6f7cd75ea69dc17cfc10",
         intel: "590699b46d608903bb158a91f20f000b54a734be042cadde3ca8e1baf5b37804"

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
