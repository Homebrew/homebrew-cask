cask "easyconnect" do
  version "7.6.7,4"
  sha256 "d2c113c6b4786887cc3a4e5f0e493aa96af448840914db6cf899c51501090bd0"

  url "http://download.sangfor.com.cn/download/product/sslvpn/pkg/mac_#{version.csv.first.no_dots}/EasyConnect_#{version.csv.first.dots_to_underscores}_#{version.csv.second}.dmg"
  name "easyconnect"
  desc "Secure remote access solution for enterprises"
  homepage "https://www.sangfor.com.cn/product-and-solution/sangfor-security/ssl-vpn"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Install EasyConnect.pkg"

  uninstall pkgutil: "com.sangfor.EasyConnect",
            script:  {
              executable: "/Applications/EasyConnect.app/Contents/Resources/shell/uninstall_easyconnect.sh",
              sudo:       true,
            }

  zap trash: [
    "/Library/LaunchDaemons/com.sangfor.EasyMonitor.plist",
    "~/Library/Preferences/com.sangfor.CSClient.plist",
    "~/Library/Preferences/com.sangfor.Easyconnect.helper.plist",
    "~/Library/Preferences/com.sangfor.Easyconnect.plist",
    "~/Library/Saved Application State/com.sangfor.Easyconnect.savedState",
  ]
end
