cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.74.0"
  sha256 arm:   "ca2a343e12ab2c96dd52decdac436b0e9efe73e0c7e00a2349a6c8b7ebfc8fe6",
         intel: "10b872be62a0952033386f2b143aec9130fc0b07a62debb66edb6a3b312359a7"

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
