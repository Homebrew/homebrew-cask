cask "murus" do
  version "2.1"
  sha256 "38951d9c50941b439e8a4ffb18f6f4640687e11b40313116274a90e3800d0297"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules"

  zap trash: [
    "/Library/Application Support/Murus",
    "/etc/murus",
    "/etc/murus.sh",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
    "/Library/Preferences/it.murus.muruslibrary.plist",
  ]
end
