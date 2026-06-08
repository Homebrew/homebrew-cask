cask "expressvpn" do
  version "14.1.1.13156"
  sha256 "b954a07bde7413436dfc38fe8dcc26e684dc0ed3fbc27e2bfcfae496019dd75d"

  url "https://www.expressvpn.works/clients/mac/expressvpn-macos-universal-#{version}_release.zip"
  name "ExpressVPN"
  desc "VPN client for secure and private internet access"
  homepage "https://www.expressvpn.works/"

  # The download page (https://www.expressvpn.com/latest) uses JavaScript to
  # render asset links, so we check the JSON source.
  livecheck do
    url "https://main-kp-site-gateway-http.prodv2.pac.xvservice.net/api/v2/installers"
    regex(/expressvpn[._-]macos[._-]universal[._-]v?(\d+(?:\.\d+)+)[._-]release\.zip/i)
    strategy :json do |json, regex|
      version = nil
      json["installers"].filter_map do |_key, item|
        match = item.dig("locations", "default")&.match(regex)
        next unless match

        version = match[1]
        break
      end
      version
    end
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
