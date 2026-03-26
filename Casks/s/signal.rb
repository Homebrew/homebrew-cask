cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.4.1"
  sha256 arm:   "d027d81ef0ec04eced06e804da025d355bd205d144c18102117ba765bd085cbf",
         intel: "a8f5f190117d709b70f2cea36dd1b3488c169d420cf2c0027312ed9166d72e3a"

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
