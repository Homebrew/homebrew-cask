cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.17.0"
  sha256 arm:   "7aa9ca3c7d864c671cf08dd68a866c6bff3a41ac5f55851c6b62a3ca653b32da",
         intel: "6a58bc29e0cdaf0ad06f30b68b0c7ef95db92949375481f7fba32af9cb969008"

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
