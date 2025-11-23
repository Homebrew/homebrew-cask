cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.80.0"
  sha256 arm:   "39e4f8d263b0f7396a82a306a80081f4498f8883c540acae64911732f5731efc",
         intel: "a0194dd2f7ef254ecb991f7f909207d0674285707c33cb8cc4f04b0674f751e9"

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
