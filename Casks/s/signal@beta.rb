cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.60.0-beta.1"
  sha256 arm:   "220471b0687387cad937106adf8231f84ac9d140b040be7a01a46406850918d0",
         intel: "40880417c6dd7fefeef6ac04d1b3a36d060e9d45a69e596dbe53358a1fe686d0"

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
