cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.49.0"
  sha256 arm:   "cbf6fe32afdb60cb19edc30ad3dc43b638ddb4b44993738aea41b0bef4ba6f82",
         intel: "bb7290ef48376e90b746bc7a6d289099a98b3adbb40c8736629cc20f03c2a71b"

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
