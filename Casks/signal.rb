cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "63fc176b832da5d122c1d68bc949eacd7cdfafae7931e92d8929aaedfababd55",
         intel: "59dcae3b92eabba45cd7b581c651288d9da411fd2ff802d0f9ab7a4501eb13b1"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
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
