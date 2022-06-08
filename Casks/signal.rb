cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.45.1"

  if Hardware::CPU.intel?
    sha256 "0920993c1a4b7968640075bfeab8a19db20578ce7ead752be068562d1db56898"
  else
    sha256 "c68b960825bd6bcb86718347fe13d57378ba6ab081798c99e3a51b614a41dac0"
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
