cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.51.0-beta.2"
  sha256 arm:   "bfa9bd20ab48535106592553710a09aff40bbef79cc5ff212abae163911bad90",
         intel: "876cd213c04297d416bb50bea61b5481d445a095c60fb45901f2e15e1a87a204"

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
