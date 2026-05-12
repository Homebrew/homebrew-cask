cask "expressvpn" do
  version "14.1.0.13058"
  sha256 "4395df575fd2282c345a436dbd11aa8399567768ad8d562de92f440d38c0f7e1"

  url "https://www.expressvpn.works/clients/mac/expressvpn-macos-universal-#{version}_release.zip"
  name "ExpressVPN"
  desc "VPN client for secure and private internet access"
  homepage "https://www.expressvpn.works/"

  livecheck do
    url "https://portal.expressvpn.com/latest"
    regex(/href=.*?expressvpn[._-]macos[._-]universal[._-]v?(\d+(?:\.\d+)+)[._-]release\.zip/i)
  end

  depends_on :macos

  installer script: {
    executable: "#{staged_path}/ExpressVPN Installer.app/Contents/MacOS/ExpressVPN",
    sudo:       true,
  }

  uninstall launchctl: [
              "com.express.vpn.client",
              "com.express.vpn.daemon",
              "com.express.vpn.installhelper",
            ],
            quit:      "com.express.vpn",
            delete:    "/Applications/ExpressVPN.app"

  zap trash: [
    "/Library/Application Support/com.express.vpn",
    "/Library/Preferences/com.express.vpn",
    "~/Library/Application Support/com.express.vpn",
    "~/Library/Caches/com.express.vpn",
    "~/Library/Preferences/com.express.vpn",
  ]
end
