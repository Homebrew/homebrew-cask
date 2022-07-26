cask "firefly" do
  version "1.6.4"
  sha256 "6bd02ea66044c9548c453ed694e3a5f38181a656389f76a569cb2c02d8f6ad67"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-#{version}/firefly-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url :url
    regex(/href=.*?firefly-desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :github_latest
  end

  auto_updates true

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
