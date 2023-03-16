cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.10.0"
  sha256 arm:   "32a56b3e016ef2f46c6e1ba5ca4453abc9a743fb50a0d2b8ab2977995c8d29e2",
         intel: "b08f83e2fefcb97443bdc32deacff501fd859d3dc172c13600340072071e9f04"

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
