cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.33.0"
  sha256 arm:   "cd954e30763c8eaca17c4527c0be979377ebc00b5a69cacf6a1110124ad0efcb",
         intel: "289534c0d6e73f2e43b672a42ea61051bf9944f820586ce0b20ebc8e7a20e750"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
