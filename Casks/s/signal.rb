cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.51.0"
  sha256 arm:   "e3242216e947983a399c4d596e78a31fad905066c01a342dd50cfb4f9802df5c",
         intel: "1fa5a2f03c36cf179086e3930cbbbfe463e0bcb339b18fecf4680ed5d6a8626f"

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
