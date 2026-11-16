cask "realtek-rtl815x-ethernet" do
  version "1.1.0"
  sha256 "4eaceaea6883fa87935ec7d84b28e8bc32e46102c2cd36a7bcfbd21e41bbd789"

  url "https://wwwfile.realtek.com/rtdrivers/cn/nic1/RTL815xEthernetInstaller_v#{version.no_dots}.pkg"
  name "Realtek RTL815x Ethernet"
  desc "DriverKit driver for Realtek USB Ethernet adapters"
  homepage "https://www.realtek.com/Download/List?cate_id=585"

  livecheck do
    url :homepage
    regex(%r{MAC\s*OS[^<]*\(Apple ARM\)</td>\s*<td>\s*v?(\d+(?:\.\d+)+)}i)
  end

  # Download page advertises Apple ARM. Both executables are universal,
  # but Intel compatibility is not confirmed.
  depends_on arch: :arm64
  depends_on macos: :sonoma

  pkg "RTL815xEthernetInstaller_v#{version.no_dots}.pkg"

  uninstall quit:    "com.realtek.app.RTL815xEthernet",
            pkgutil: "com.realtek.app.RTL815xEthernet"

  zap trash: [
    "~/Library/Application Scripts/com.realtek.app.RTL815xEthernet",
    "~/Library/Containers/com.realtek.app.RTL815xEthernet",
  ]
end
