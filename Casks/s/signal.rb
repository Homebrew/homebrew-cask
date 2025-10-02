cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.73.0"
  sha256 arm:   "db5d6d794326438070265e0c7499d0328db1b86a14930604f7c646a820faac55",
         intel: "cd85bdcca8fc5d64e751932b5d5f0efaf8bec4323da948b93ca3b3453b10b3a5"

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
