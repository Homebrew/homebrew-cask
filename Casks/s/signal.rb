cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.40.0"
  sha256 arm:   "640c46ac6e7aacdde5799bad32f45c296d9c0de2bab17b47f7edcbfcec35c868",
         intel: "5ab47f479e539a090204d2d718ab16d163cb2dd366a043aa7022da56a2ec6a9b"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
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
