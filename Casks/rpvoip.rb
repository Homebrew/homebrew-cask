cask "rpvoip" do
  version "5.19.06.044"
  sha256 :no_check

  url "https://shop.west.com/downloads/rpvoip_mac.pkg"
  name "RPVoIP"
  homepage "https://www.west.com/"

  pkg "rpvoip_mac.pkg"

  uninstall pkgutil: "com.intercall.webexVoipClient.RPVoIP.pkg"

  zap trash: [
    "~/Library/Application Support/RPVoIP",
    "~/Library/Preferences/com.intercall.rpvoip.mac.plist",
  ]
end
