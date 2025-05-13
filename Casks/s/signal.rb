cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.54.0"
  sha256 arm:   "0886f1725e7eaf54799b874ccd0f945d6cf6b3509894d09d389d3c4546bb9db4",
         intel: "59630d5cad15c173d530bfaf26c985db9147faa69e7d3633a6a9f4fbf4c486e1"

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
