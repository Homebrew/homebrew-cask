cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.71.0"
  sha256 arm:   "65030c30750fa0039941e16241b916f86eb1af519c385b1a03643710fb2fb8e2",
         intel: "53b121bced97bf384bfadc474963dc4e435db169e033b43d2bc711eeebbe4ed4"

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
