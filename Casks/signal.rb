cask "signal" do
  version "1.40.0"
  sha256 "96eab9f752889753b504e7affe2c04c2e8bbe7b7be25bd0a243afa57d7301b9c"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    strategy :github_latest
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
