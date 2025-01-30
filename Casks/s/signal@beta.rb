cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.41.0-beta.1"
  sha256 arm:   "2268504a452d30cd6a69173c14cb307d3776a3277c77481a18268d7a45babce0",
         intel: "36f9ff0284a0ac4bc97469dfae0eb1991481a6eaf780a1f366e47a933ed1efee"

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
