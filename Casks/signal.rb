cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.40.0"

  if Hardware::CPU.intel?
    sha256 "ad1800094662b712519932a79ffff46ac3dd2ebf1f70ac55efe3764af73e4115"
  else
    sha256 "a34bcfe242b653f10743f1d732ce2b9a875e99f7ba21f9bf0c233181662ef42d"
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
