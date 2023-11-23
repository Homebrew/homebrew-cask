cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.39.1"
  sha256 arm:   "aba7ce84dc009f334da9b549149d8cbc2346d71e01d88f79a539b2cff0811589",
         intel: "877a4c24a4fd2367990cb9ff949c8892351e91ff948bd624adab473584217cab"

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
