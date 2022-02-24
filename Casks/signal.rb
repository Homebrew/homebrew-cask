cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.33.0"

  if Hardware::CPU.intel?
    sha256 "5e918f99bc156c25b779386c45990c15c7994d24c65c3be61d002a7b829bcd4d"
  else
    sha256 "ba0ee872ba1fb20433dff3124b06e5dca26839628075552fd618dd1c1537673d"
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
