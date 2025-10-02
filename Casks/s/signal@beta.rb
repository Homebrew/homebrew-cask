cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.74.0-beta.1"
  sha256 arm:   "7d0b1211083277ecda3f325ecb2ca0f5bd4c32a1fac4724aaa523ee05723e3a8",
         intel: "33b40580697ebaa0fa762d433eabe63b06d9e710e4ef77444a4fac25eb4937c4"

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
