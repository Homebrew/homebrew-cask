cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.55.0-beta.2"
  sha256 arm:   "bf8eac8ed3ae2dacfa9cd01b8c2d0b1f7d92bf29c6bad6c4ad4865c2347e0698",
         intel: "fe18b9dcbc5e1cf7cd7381f06f47a600757efb96eaad60fcf1df8f82fb5be676"

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
