cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.52.0-beta.1"
  sha256 arm:   "4de370c6aed513413dcbe67432fc1da67113d8e2db939732896a61dcb37c88a8",
         intel: "68ec8bfd410e9ceb73b0dc80e3160aca5e06f1600e34dfa3213046339098136f"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
