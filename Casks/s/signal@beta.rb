cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.46.0-beta.1"
  sha256 arm:   "e7206af0e3e9670f734ea015b40ac24d5b6ec2bd4e4531b0adbe07b2ec47153e",
         intel: "742d5725f2876e2e6f244f1515972e7ef32ef9e56af70c16a2fc2a38294668a6"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
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
