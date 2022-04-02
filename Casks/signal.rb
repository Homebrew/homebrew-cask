cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.37.0"

  if Hardware::CPU.intel?
    sha256 "7187136c69e28737c12af85f81404ac9b1ef4c36bb5702620e3849858701facc"
  else
    sha256 "1317a91700bd322d094137148d0397c64d54953284b2586aab0c8d6a66330197"
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
