cask "firefly" do
  version "1.6.0"
  sha256 "c0b448d3f4fdca952d9b3bf813a6e54d769b5cf7c6f7654711b6d78a35588f0e"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-#{version}/firefly-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end

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
