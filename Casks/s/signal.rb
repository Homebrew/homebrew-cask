cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.5.0"
  sha256 arm:   "1c6c29ebaa38e59841c98b30deaab42af8f91263ebebefeb6cb27eeacabb3916",
         intel: "0ff9221a4f231cae611f0c07f51f0c2f53070e490565052d787c6b4c608894e3"

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
