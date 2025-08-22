cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.68.0-beta.2"
  sha256 arm:   "b34610e7bb6538999da7eb45413ab0b23f2c3780f5782e145aea0b877f22fec3",
         intel: "79ca32845259dceed6700c968c816d20789739a92e6dcd3662facf1ac1b03267"

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
