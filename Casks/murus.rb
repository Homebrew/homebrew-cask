cask "murus" do
  version "2.3.3"
  sha256 "94b4fa108766fefa60c5d7f00b75790dcc08c17e324a19cd64ac5069f2141bc3"

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
