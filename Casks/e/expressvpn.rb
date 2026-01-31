cask "expressvpn" do
  version "12.1.0.12128"
  sha256 "7605841cd443f55f8ba3938c273f93c6e47f74aa768a23757d01085de5ed8887"

  url "https://www.expressvpn.works/clients/mac/expressvpn-macos-universal-#{version}_release.zip"
  name "ExpressVPN"
  desc "VPN client for secure and private internet access"
  homepage "https://www.expressvpn.works/"

  livecheck do
    url "https://www.expressvpn.works/vpn-download/vpn-mac"
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
