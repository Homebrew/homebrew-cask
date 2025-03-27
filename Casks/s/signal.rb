cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.48.0"
  sha256 arm:   "6373fb4aea8692341bb198b82978962f31ff2c914c24e6547a8cfee6342b63d6",
         intel: "ffe8ca652abde412efabb972dc36e6a92d499fe74e30e6d3857f839a9fb8687e"

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
