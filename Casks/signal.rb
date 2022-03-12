cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.35.0"

  if Hardware::CPU.intel?
    sha256 "73098dec98ee72807242d0b53a66911597b05b7d0c6240253e10825ac471ffdb"
  else
    sha256 "e959af9afb1718afa358599d2487d1b2156518629ad93423a30bfc0e20bafadc"
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
