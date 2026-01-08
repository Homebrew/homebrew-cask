cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.84.0"
  sha256 arm:   "4b1370d5fa3635ee27d18c4c4f8e079deaea96318878f3e9f7445c67bde3f24a",
         intel: "c01a54ec7676039b25132a66e7f72c7a6518cef2b319a4b4f1183efc4bfb8bca"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
