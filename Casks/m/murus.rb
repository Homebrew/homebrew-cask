cask "murus" do
  version "2.5.1"
  sha256 "ec2d195f310802ece20ad9db5b335f5c1d636a986fef251a92a871f2ce670f6f"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip",
      verified: "github.com/TheMurusTeam/Murus/"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  depends_on macos: ">= :sierra"

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules"

  zap trash: [
    "/etc/murus",
    "/etc/murus.sh",
    "/Library/Application Support/Murus",
    "/Library/Preferences/it.murus.muruslibrary.plist",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
  ]
end
