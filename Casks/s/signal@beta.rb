cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.6.0-beta.1"
  sha256 arm:   "270a07efc4742a65c4d139800d8fe26baf6fbbfbfe1578ec9a5203730b45c25b",
         intel: "b1afdd6b7bca3d7321dfcbed9bfd3930a747a17294f4262f5a226ff43a83dd6b"

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
