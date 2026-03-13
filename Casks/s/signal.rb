cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.2.1"
  sha256 arm:   "613e5e7bdf40583fc8e48e7fa96081426918662f2ce4eb35bf7e985b9bd984af",
         intel: "d4061b4fe3e8c21634cc2786237b5d0379a85164af7489b9e91d239844efdb06"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
