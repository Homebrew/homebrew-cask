cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.27.0"

  if Hardware::CPU.intel?
    sha256 "5db47125c0ce53cf95b4a0919322cbea98674084ad87e0ecbf2761bdc06d1e73"
  else
    sha256 "c56392c0c02e3debf5625c12512be4b06b62bca50d2f4bd3c40ad4c50af12741"
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
