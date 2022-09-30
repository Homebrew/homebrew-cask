cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.61.1"
  sha256 arm:   "0a7fb83eacbdb845aca359c11b60b0f4c72ba9e641b768b696e5c61088561265",
         intel: "5db050bdc881290837ffd1c4fbf22c743bda869d81c5ddcc71ca4a7df220197c"

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
