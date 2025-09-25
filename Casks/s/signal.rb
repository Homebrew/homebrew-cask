cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.72.0"
  sha256 arm:   "8e6432e9461ea556fa6d18f02fc5c241516407620f460e65630cb3b3f36c39a3",
         intel: "d4bcbd02ee9dc2fd487bfd1b1fcabe56b72038d78dff9d3bc7fdd4fa189c7271"

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
