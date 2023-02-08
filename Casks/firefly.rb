cask "firefly" do
  version "1.7.0"
  sha256 "7b8fa09b5dcd684a6a01fce430edfc52a65885e289782af6e9d1fc400b3bb3d3"

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
