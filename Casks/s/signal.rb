cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.28.0"
  sha256 arm:   "0000c27d666709b14e6c9e00098864e4378916f432d39c3f277410d9e69084a5",
         intel: "638d2b642cc03084b6bfdff7010ef0b426df5aa1f17d74e12b4d8e3eac258f9e"

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
