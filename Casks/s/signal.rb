cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.62.0"
  sha256 arm:   "68e50975740ebe6964fc8b4fd76f35d56ab6f70120517c8adad4306d6831604a",
         intel: "ae232d13c3453a020535483e94a02fc77d54e9475c75750c045da22d29f4d7b3"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
