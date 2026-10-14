cask "murus" do
  version "3.0.1"
  sha256 "53f98000d33b3d2b99cc939ba06bcd55122b6da35a6ad8b378d0f2c7d80d8afd"

  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip"
  name "Murus Firewall"
  desc "Firewall app"
  homepage "https://www.murusfirewall.com/"

  depends_on macos: :sonoma

  app "Murus.app"

  uninstall launchctl: "it.murus.murusfirewallrules",
            quit:      "it.murus.Murus-Menulet"

  zap trash: [
    "/etc/murus",
    "/etc/murus.sh",
    "/Library/Application Support/Murus",
    "/Library/Preferences/it.murus.muruslibrary.plist",
    "~/Library/Caches/it.murus.Murus",
    "~/Library/Preferences/it.murus.Murus.plist",
  ]
end
