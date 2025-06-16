cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.58.0-beta.2"
  sha256 arm:   "1a5427cc5276b5f60b88a15aa63ea63376f2e47544b6f45892162dc046590b25",
         intel: "b0daffb0e581ab9fbf5d3a09b7fd878124f6b45e51cb9ad314668cc4b04d7299"

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
