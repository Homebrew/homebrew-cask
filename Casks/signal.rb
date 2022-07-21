cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.51.0"

  if Hardware::CPU.intel?
    sha256 "51d8c3fc1a6548063a540aa38956c56efa5c7920d0f39bc720f7960e82b2372c"
  else
    sha256 "aef424902c9134933a92979010394194068924c11ffb538b78268b3cc87b8ae8"
  end

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
