cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.39.0"

  if Hardware::CPU.intel?
    sha256 "b901e60b58df8c2ae2d46204effb159539347fd8e18489d83a32688c2a28a4df"
  else
    sha256 "1e783a0745d06aad0487ae99e1746d850246bc37346e94f1730e0a3347c4c4f6"
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
