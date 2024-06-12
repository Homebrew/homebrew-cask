cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.13.0-beta.1"
  sha256 arm:   "6d3f0f750f7505ec66bbba7160ba2185a57d5cc5fe2211c9987a7edfe7521c48",
         intel: "0ac2014c3e33b3e3f2a316fb1fb9892919e88d9e61fce83a489a1e474ef253d3"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
