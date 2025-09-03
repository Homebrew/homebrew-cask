cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.70.0-beta.1"
  sha256 arm:   "097977f496aee4a35125fa225173c91d37e2ac46a6cb8fe88382b7333e8e29e3",
         intel: "c3224f329dc7cdd952927ff446bf2f3d13ca36d294bdd7b79fda677689757cec"

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
