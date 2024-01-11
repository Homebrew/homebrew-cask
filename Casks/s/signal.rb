cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.44.0"
  sha256 arm:   "e810adfce6b857357159a50146ec039d061bf2789520dde623998aec3377073d",
         intel: "79a129521711d4c65e701fbe82a42a6aa8ddfabfffd977738267f5eec27b9d08"

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
