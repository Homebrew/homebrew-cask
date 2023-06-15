cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.21.0"
  sha256 arm:   "0f5d67db8a61a12aae360382a9d73716615da8f19e97e13f6adcd6ac21f444b4",
         intel: "09adf4662a6e09343490b636bda2a385cb72d8be67b807a76951aea6833a652b"

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
