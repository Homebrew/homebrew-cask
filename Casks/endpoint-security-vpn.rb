cask "endpoint-security-vpn" do
  version "E84.30"
  sha256 :no_check

  url "https://dl3.checkpoint.com/paid/af/af68fad0493a6a455d779200b7589ae0/Endpoint_Security_VPN.dmg?HashKey=1607976066_0e2d22b1b1b511aa4b6def07ef8b024b&xtn=.dmg"
  name "Endpoint Security VPN"
  desc "Checkpoint VPN client"
  homepage "https://supportcenter.checkpoint.com/supportcenter/"

  depends_on macos: ">= :catalina"

  pkg "Endpoint_Security_VPN.pkg"

  uninstall	launchctl:	[
    "com.checkpoint.epc.service",
    "com.checkpoint.eps.upgrader",
    "com.checkpoint.eps.gui",
  ],
            quit:	     [
              "com.checkpoint.eps_vpn.ui",
            ],
            pkgutil:   [
              "com.checkpoint.pkg.epc",
            ],
            kext:      [
              "com.checkpoint.cpfw",
            ],
            delete:	   [
              "/Library/Application Support/Checkpoint",
            ]
end
