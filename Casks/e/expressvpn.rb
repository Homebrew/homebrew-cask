cask "expressvpn" do
  version "14.0.0.12844"
  sha256 "7ebeb5220062fe286690a8c3dc19d40ecf6b0c4af1834d3565b6625a33f39438"

  url "https://www.expressvpn.works/clients/mac/expressvpn-macos-universal-#{version}_release.zip"
  name "ExpressVPN"
  desc "VPN client for secure and private internet access"
  homepage "https://www.expressvpn.works/"

  livecheck do
    url "https://portal.expressvpn.com/latest"
    regex(/href=.*?expressvpn[._-]macos[._-]universal[._-]v?(\d+(?:\.\d+)+)[._-]release\.zip/i)
  end

  installer script: {
    executable: "#{staged_path}/ExpressVPN Installer.app/Contents/MacOS/ExpressVPN",
    sudo:       true,
  }

  uninstall launchctl: [
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
