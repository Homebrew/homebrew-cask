cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.16.0"
  sha256 arm:   "52556e29e384fda79f56a50bc6db783802136b36c847bfc63454cc79d88b18b9",
         intel: "357354fd9f5828d42a211a0eed4d7736004498dbf7a1a45ba3341688c736eac3"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
