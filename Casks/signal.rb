cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.29.0"

  if Hardware::CPU.intel?
    sha256 "bda244f082328caedc95d46c4b76b7d134337d27bb7c8e85b827c801d7d2e5c6"
  else
    sha256 "fb7d12460c0207d1dcdfd1ae136a7f4e2dd5f6770d7c064b1aad3f1605e92169"
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
