cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.44.0"

  if Hardware::CPU.intel?
    sha256 "368f85177c865e793d230a46a2a7be2b60c16b179bc95b2ded8863fec74e84a9"
  else
    sha256 "078cb761dc6135a7215102ba300464fd5dbfabcd5e13f336b8819030a56952f2"
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
