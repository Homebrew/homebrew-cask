cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.45.1"
  sha256 arm:   "0fb68cc0cd26404782b7e2c55529e26c22cdb17a7411d1b4bd3db51584bc8301",
         intel: "2b83be01231b2ca277ebfd45aeba5ff06206189a0c85278789a591397f2fd67d"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
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
