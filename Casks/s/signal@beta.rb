cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.31.0-beta.1"
  sha256 arm:   "2ac94491df6bf47bc0c44ca0685588614bc926f946db07ab6f875bd34a808c06",
         intel: "228714c280d102369e85623c1d7e9330c01ecf5e8ec8e94859fdf3cd8c5da00a"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
