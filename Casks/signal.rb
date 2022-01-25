cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.29.1"

  if Hardware::CPU.intel?
    sha256 "ddf21983d9b847ba69190065a0e37dd835a3f59a4f176380d5da844591d23e2b"
  else
    sha256 "04e5b35bea8c4453f99596aa42edafbf47ce4e0cddb02a04546e57b1a860f84f"
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
