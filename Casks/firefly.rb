cask "firefly" do
  version "1.7.1"
  sha256 "3e9e92039263649baf28a48b28438a62961defb68f9ef325a0163271b7f8bb2c"

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
