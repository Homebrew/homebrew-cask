cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.47.0"
  sha256 arm:   "87256acebf1ae445c7dd796bcfcefde9a59908b3da7598d88eb394783c791db7",
         intel: "63bdd3842621c9e52157f69c884ebc622b7f4727748e3b0fd3c657d6522a56f5"

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
