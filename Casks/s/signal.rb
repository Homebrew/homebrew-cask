cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.53.0"
  sha256 arm:   "8f1ed8b0c8f034ab13531200bd7a1f3c3ce25967c271ae030f109fe794a6907f",
         intel: "6a44625ce007c2f1694a04b737db6568423a8289a0d80178662f95f3dd13cfd5"

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
