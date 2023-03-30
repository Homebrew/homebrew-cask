cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.12.0"
  sha256 arm:   "ea31a366051afca52097640714642020328b31733a7093511cf81ca5e279b1f6",
         intel: "6affb70c8f64bd138cbcc1455d01277c90937461be4c94b01f0ce2a9b37960cc"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
