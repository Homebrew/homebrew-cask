cask "firefly" do
  version "2.0.9"
  sha256 "9108fb404e8ac587a6f132ed1c44ef97aea1bc103419de763130d79105e0d396"

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
