cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.11.0-beta.1"
  sha256 arm:   "1635b44f7caa45a53f575a46f559b0a7b54bfd41be700117bb0a2688e21efcb2",
         intel: "2384eecd553345a530d5f0e2247595f84453933f4d7c61808f0c80cc18a9775a"

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
