cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.30.0-beta.1"
  sha256 arm:   "f9549b7173709818dc834e04efa2d42e2f70049c0371422cfdd0931d971e7f06",
         intel: "7c8033e0182de2dcd71a9d9cffdf9a57303c7cd3aeb7c9154ca08a3ce35195a5"

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
