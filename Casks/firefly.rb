cask "firefly" do
  version "1.6.5"
  sha256 "07be9f0a3c645bd0d9566b7fcc77befd406e727e60aaf2d7f752ab287d3e5ee3"

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
