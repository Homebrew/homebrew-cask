cask "firefly" do
  version "2.1.0"
  sha256 "73ebfa0a52d803156af492c4ec4c6a87331ff4fa27ea86ceafca13e1359de0b8"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-#{version}/firefly-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/desktop[._-]v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  auto_updates true

  app "Firefly Shimmer.app"

  uninstall quit: "org.iota.firefly"

  zap trash: [
    "~/Library/Application Support/Firefly",
    "~/Library/Logs/Firefly",
    "~/Library/Preferences/org.iota.firefly.helper.plist",
    "~/Library/Preferences/org.iota.firefly.plist",
    "~/Library/Saved Application State/org.iota.firefly.savedState",
  ]
end
