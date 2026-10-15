cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.32.0-beta.1"
  sha256 arm:   "56d7dd60819c3e63c275a5b5175a00d8695b45e9ebebfe4f04b5162ee8ba6250",
         intel: "5ea3d1e9cc05cddfa3b9d308213637a79882834c25747e47ba96caf98ce92f0b"

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
