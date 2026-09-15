cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.28.0-beta.3"
  sha256 arm:   "963266fdab7964abdb239e29f5f6ad7295acbbcb19d46a1de3290562b1d72c35",
         intel: "8e17c3688579621121874e69519215501b4bbfd6a16033de59d634d64c096dbe"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
