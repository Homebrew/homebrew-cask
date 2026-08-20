cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.25.0-beta.1"
  sha256 arm:   "9f8639cb61b7c4ed713b62ed4151febd9dd5c410adbb1e376498b0c1fccf439b",
         intel: "2389a65947fad31e977122b097dda6a15ea1cc881aec516111023158986b9729"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
