cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.13.0-beta.1"
  sha256 arm:   "17239a588921d86dfb0fc38a3910fc9036415182620bbdedc511e4519c426c85",
         intel: "d42904e9a16357882d5240afcac1d295a016dd27152741675dbbb43382da07dd"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
