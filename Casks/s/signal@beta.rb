cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.53.0-beta.1"
  sha256 arm:   "435ac8ec681b2642fbc1e0a0107b6393b992cf6c7521fb343ff4a49d476548e6",
         intel: "26b3d1f0fcbe0cdd9c2ecc9a517724c49c12b915ff751fb0c664bbfcd5ec76e2"

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
