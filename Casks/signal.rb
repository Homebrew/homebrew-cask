cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.5.1"
  sha256 arm:   "22de55f0117c7e462cacae9c3fb88f6fb5df8242dbfa770c007ec059d088e83d",
         intel: "5bddba31074f23b42abbcfd39cede21f0a137a905796819f84c9481c65fa0ac7"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
