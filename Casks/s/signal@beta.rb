cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.64.0-beta.1"
  sha256 arm:   "3e102b2cb4693d11982fecac6b773707297ceaea9fcb9d191a34ae70f711ce2b",
         intel: "778f4922d0de9905894eeacef3af47e78a8300bc4cb5a00431016fcfdc1db22d"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
