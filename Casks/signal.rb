cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.52.0"

  if Hardware::CPU.intel?
    sha256 "2c3b795c5682a0270e647e5ca47dc697239f26078e15648b4721d22bea98dfe3"
  else
    sha256 "6787520e639add9f646614549275491e3d6061878894185069faffb4657d7b73"
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
