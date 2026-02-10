cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.89.0-beta.1"
  sha256 arm:   "966729607c2353924a743cd00e3237504a0cf75ef85f5eb356d1720dbce77761",
         intel: "83aebf833077c1a92236801b7e84d6574db8233a953c20a99e3f7c03bbd04a8e"

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
