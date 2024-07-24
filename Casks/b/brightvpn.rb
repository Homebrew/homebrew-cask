cask "brightvpn" do
  version "1.227.590"
  sha256 "e2597911d0c0b7b6b0fba571990a875c7da8fe7d08728512b7f18017478ab881"

  url "https://brightdata.com/static/BrightVPN-1.1-#{version}.dmg",
      verified: "brightdata.com/static/"
  name "Bright VPN"
  desc "Free VPN service"
  homepage "https://brightvpn.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :catalina"

  app "BrightVPN.app"

  uninstall quit: [
    "brightvpn.com",
    "io.luminati.sdk.net-updater",
    "io.luminati.sdk.net-updater-launcher",
  ]
end
