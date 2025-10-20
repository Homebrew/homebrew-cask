cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.75.1"
  sha256 arm:   "2f020ac15db6b429a8e1d7e4c4155ae7e887f358ad5df0ded0005c24aeab7a90",
         intel: "028c1a80bd9439b0186ccd2a8ddb12c72285599d6a7383100777fd1e5171043f"

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
