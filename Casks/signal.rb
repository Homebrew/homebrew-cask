cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.41.0"

  if Hardware::CPU.intel?
    sha256 "d6cbc1b7a324aaa9f8d007c372c11604c4921a2aea3688330036bf6bc514bb2d"
  else
    sha256 "35ab3c78ca582225fcf92023e1d9abf48af120d83af306b7a80783a45352b868"
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
