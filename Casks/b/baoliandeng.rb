cask "baoliandeng" do
  version "5.2"
  sha256 "e6fae4f1029c55fccdfbc36db2b13d32908e5dc316b444c7d89e7e57feccc08e"

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
