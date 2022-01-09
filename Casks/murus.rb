cask "murus" do
  version "2.2.2"
  sha256 "17a213957039ce0e16a98f5128ca75a8d74b1ab89c4172e1cdefe770f8fffe4d"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules"

  zap trash: [
    "/etc/murus.sh",
    "/etc/murus",
    "/Library/Application Support/Murus",
    "/Library/Preferences/it.murus.muruslibrary.plist",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
  ]
end
