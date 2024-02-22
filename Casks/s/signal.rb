cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.48.1"
  sha256 arm:   "adca3128e81cfde61f323ee507f9e76c52a1d79415250530ff60f760364e597a",
         intel: "b508fa9341280df6b50df1dfde7141884a4cdb83fb05be80f9a89ec981dbafbb"

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
