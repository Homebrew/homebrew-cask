cask "firefly" do
  version "2.0.8"
  sha256 "3a5080e1d3c168c3460f34f9fcbf2e82718f03e07d0cbd6c8c56b2effc0e71a6"

  url "https://dl.firefly.iota.org/firefly-iota-desktop-#{version}.dmg"
  name "Firefly"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url "https://dl.firefly.iota.org/latest-mac.yml"
    regex(/firefly[._-]desktop[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Firefly.app"

  uninstall quit: "org.iota.firefly"

  zap trash: [
    "~/Library/Application Support/Firefly",
    "~/Library/Logs/Firefly",
    "~/Library/Preferences/org.iota.firefly.helper.plist",
    "~/Library/Preferences/org.iota.firefly.plist",
    "~/Library/Saved Application State/org.iota.firefly.savedState",
  ]
end
