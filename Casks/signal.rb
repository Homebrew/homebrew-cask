cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.44.1"

  if Hardware::CPU.intel?
    sha256 "bda8a33a261e15569f7a232748e233368ad39ea52ff40b8eb8e702521f932336"
  else
    sha256 "fd8ac8e9f4bb3fc78e41edb3efadceef1782ffd75b1b0e1338efb0eec6dc8f0b"
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
