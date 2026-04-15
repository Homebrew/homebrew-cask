cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.7.0"
  sha256 arm:   "df795bf1ab0b7c4e775e8193d874a4838a5a5c97e243b3723a91afba6ff3968b",
         intel: "4a51c1a7e1ae99f1611ae97caa2025341b329831f9f2118f888f22bc13d31234"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
