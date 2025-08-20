cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.67.0"
  sha256 arm:   "26b5e35571e82b1ce3f5aac6ec513968f9eeab336a944218236c3281b4780c52",
         intel: "3177a558954d39a296323eeb63ad5d3a5f0c2a26a6f1cf1d38e91b680d7494fa"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
