cask "signal" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.31.1"

  if Hardware::CPU.intel?
    sha256 "8256c69cc02fca740e049dc4fcb08559a852d3cf7b4bbb87a543ee578acf62e9"
  else
    sha256 "ca25798116ecd35c64fe7eba0d0fe0f7dc0ee153079bb7e66f16d4be7350454e"
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
