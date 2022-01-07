cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.27.1"

  if Hardware::CPU.intel?
    sha256 "83cdd68c0bcfbe0afb3ab794531f3122ad3732b58c9517ff8b83796b6c170723"
  else
    sha256 "600121095295d7b7d54b38d0a984ca220e94ceb4ef902afded1cb1591d2bff71"
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
