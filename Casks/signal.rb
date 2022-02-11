cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.31.0"

  if Hardware::CPU.intel?
    sha256 "9cf375f5509b68ff5e4e15911f7848a9a94351f79034272bfa551c175f2a4078"
  else
    sha256 "4ceb256f2eede9fede7d04eefe1a7e94139491284dd504d4e75569c4a01b8367"
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
