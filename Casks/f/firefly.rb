cask "firefly" do
  version "2.0.3"
  sha256 "b9a1132dc1f7c207da5d3981d7f083eea1123798f05212dd68b88d42cb09dffb"

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
