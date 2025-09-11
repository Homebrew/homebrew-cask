cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.71.0-beta.2"
  sha256 arm:   "fe1495c35729b3c8cca7ea0408e77fe16f4ec0eeb6b195b8b7f035c5b7affb31",
         intel: "d24e26bfe31188aacd3039a2ca0a2f63a892ea495b7e93b5cf04025be45cb354"

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
