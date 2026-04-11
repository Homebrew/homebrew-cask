cask "baoliandeng" do
  version "5.0"
  sha256 "baeac90fe15b41bce78f4ceb5cd9648f0eb4d3b062831a8908303b7e25f707ac"

  url "https://github.com/madeye/BaoLianDeng/releases/download/v#{version}/BaoLianDeng-#{version}.pkg",
      verified: "github.com/madeye/BaoLianDeng/"
  name "BaoLianDeng"
  desc "VPN proxy powered by Mihomo (Clash Meta)"
  homepage "https://madeye.github.io/BaoLianDeng/"

  depends_on macos: ">= :sonoma"

  pkg "BaoLianDeng-#{version}.pkg"

  uninstall quit:    [
              "io.github.baoliandeng.macos",
              "io.github.baoliandeng.macos.TransparentProxy",
            ],
            pkgutil: "io.github.baoliandeng.macos.pkg",
            delete:  "/Applications/BaoLianDeng.app"

  zap trash: [
    "~/Library/Application Support/mihomo",
    "~/Library/Caches/io.github.baoliandeng.macos",
    "~/Library/Preferences/io.github.baoliandeng.macos.plist",
    "~/Library/Saved Application State/io.github.baoliandeng.macos.savedState",
  ]
end
