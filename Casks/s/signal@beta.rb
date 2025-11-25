cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.81.0-beta.2"
  sha256 arm:   "6b1d70d879c51dae80d0c02b4f18ba022d900be56484e12e933b0b1cc1f38f5c",
         intel: "d1c8af88a38ef8ecb93e28278a41f9ac5f88be2bb52b0ad38bb1e28bedd5b07a"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
