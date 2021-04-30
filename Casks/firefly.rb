cask "firefly" do
  version "1.0.0"
  sha256 "9c18711530de5be9817116b0cc44e4c164cf2eac7abf4dc8a16a912581895262"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-#{version}/firefly-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^desktop-(\d+(?:\.\d+)*)$/i)
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
