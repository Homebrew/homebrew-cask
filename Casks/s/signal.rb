cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.24.1"
  sha256 arm:   "41e59e6437140512bc2066af0911c0a364cc47bd2520118b196fc9a563377b01",
         intel: "f4e47a4ad09a9dfb9664849ef143f47a48a1fe5d1e5e58be352276441e6b1aad"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
