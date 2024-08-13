cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.19.1"
  sha256 arm:   "ccef9626a6f3405d41fa1ab1d96ac8369bb7833e06c63507d7bf37fafb2476fd",
         intel: "dc92bf09ced7f8a57384b99e51cc912de8d7d1c496a8be412b017376b7868d63"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
