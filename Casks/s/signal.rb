cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.66.0"
  sha256 arm:   "e0891ebf089ff6cedd762540b25669e306b9a61f8689c4b65557c0e4222091f8",
         intel: "1f927084dab64d8891fd86aa2af6befc80de08aa099869e3dd5c7cd15a04019e"

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
