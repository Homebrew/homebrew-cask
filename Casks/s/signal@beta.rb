cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.8.0-beta.1"
  sha256 arm:   "7e6f90940d320b21416702cb9e04c379dd8de99ac0432af2fce01db159e7eec6",
         intel: "5a3192057f8c92ee0ded073d2ac588d531ab183153f2b38a86049da90f046ea2"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
