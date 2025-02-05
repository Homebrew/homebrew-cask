cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.41.0"
  sha256 arm:   "920a13bd3833677d82bbcfcf5bc49bdb1e367ba0a74ea1da239c5538b28fb640",
         intel: "646809117b31d90f549d655a93d2439829d8f0b9c1d9d1412102dfa48fd87ff7"

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
