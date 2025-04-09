cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.51.0-beta.1"
  sha256 arm:   "ed7d6f24f8802450f56be1b95ae4f9e93b3ca804dd9eef14ddd37507911dffac",
         intel: "23cf68d25e335cf621c5dc2af24890468d7442064dfb7445377a44cc23bac4a0"

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
