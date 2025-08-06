cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.65.0"
  sha256 arm:   "9e2ada6ea1b96e443442346092a2f711046b90d2b7f4fb6feab7eb94a87714fe",
         intel: "4bf5bb6afa9e00bcb30bad22c0df15b7ffe1d7362e3242142047b0106f9a6924"

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
