cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.46.0"

  if Hardware::CPU.intel?
    sha256 "70c00d03073c0fcbcd4e47c5051a8467009128c18dfaecbb676aa8b66c3f1118"
  else
    sha256 "c168b1ad8e6506acf3b40f0906e958307bb0df5e6fc687270ad10e7ed69c66ce"
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
