cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.69.0"
  sha256 arm:   "9d4ff59a852c510467d1a341bd4d973a2b7437f29af71c02325e4762cb2858c5",
         intel: "f124897954cf1d746748a77b76590fa526af6b14bddeef818e7cbb18ba9dc0a4"

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
