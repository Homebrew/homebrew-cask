cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.56.0-beta.1"
  sha256 arm:   "daf491795129cbde13a2773d6cb7eda71450873999f487825f50caf15a221c74",
         intel: "97e0d36f072b380e65c2d0d5404df28888cc79277705f346952a914e57396d12"

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
