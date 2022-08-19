cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.55.0"

  on_intel do
    sha256 "0997f557924dbffdc477bc8088b3512776a8382c5eae30e191d0e730012fbbd4"
  end
  on_arm do
    sha256 "18ee0df71f071d7c524d1273b8e93f04a4a479d20b753729a7c8bcf077636ed3"
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
