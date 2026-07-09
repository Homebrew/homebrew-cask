cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.19.0-beta.1"
  sha256 arm:   "85e6004b14e4c53b9dced989ed9476613c9293a0c85ea047dc424e0ca413188d",
         intel: "1962596b3669467ee3cd70f47f8fe33dd67313e8a110fe466205071d1dd3e998"

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
