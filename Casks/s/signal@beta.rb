cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.42.0-beta.1"
  sha256 arm:   "7482bcf10f352f5843a9a43be6a5d04249a762a03642b9f3b397bd180f456356",
         intel: "191b1f20f6842f9fe63534d6d4ad340de729ee81b445360564344d011b95b998"

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
