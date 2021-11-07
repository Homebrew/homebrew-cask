cask "azirevpn" do
  version "0.5"
  sha256 "e62af6fcbafa555734491ccca603cfbbd7cd74e63d17e2a5dfc58412fdc12748"

  url "https://github.com/azirevpn/azclient/releases/download/v#{version}/AzireVPN-#{version}.dmg",
      verified: "github.com/azirevpn/azclient/"
  name "AzireVPN"
  desc "Open-source VPN client for AzireVPN"
  homepage "https://www.azirevpn.com/client"

  app "AzireVPN.app"

  zap trash: "~/Library/Preferences/com.netbouncer-ab.AzireVPN.plist"
end
