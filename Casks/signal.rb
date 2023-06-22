cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.22.0"
  sha256 arm:   "cfaaebf77d43f35eb906a183899e78608ffa2d84ec3adc3247ccdb266776c7d2",
         intel: "908689e554a50e6cd33add249ddc56d6aad03548412e339755d2823a7f3b5dcb"

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
