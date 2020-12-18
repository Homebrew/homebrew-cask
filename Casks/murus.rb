cask "murus" do
  version "2.0.5"
  sha256 "1076deda7f79293b8a36472a8d5b17c72d4842d2996cb7dfd4c4724168047991"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
  appcast "https://github.com/TheMurusTeam/Murus/releases.atom"
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
