cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.42.0"

  if Hardware::CPU.intel?
    sha256 "db9c7ccd06d93e6a8d6048964a88a46478bba4e8d427e5661c105b47b377b677"
  else
    sha256 "a35da7b4d85e17fce670a3867ee3a204f308ebb2ee8123b0887a6adcdfe93d58"
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
