cask "firefly" do
  version "2.0.11"
  sha256 "36da479b5fa1c499bd6e1a421e74313c757337e495fde181f130597a0507ae89"

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

  caveats do
    requires_rosetta
  end
end
