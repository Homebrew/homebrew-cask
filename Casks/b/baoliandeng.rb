cask "baoliandeng" do
  version "5.3"
  sha256 "0189159dd5306338eedc8bd5e70e79a018c4575d734b5679f6932ead1c535039"

  url "https://github.com/madeye/BaoLianDeng/releases/download/v#{version}/BaoLianDeng-#{version}.pkg",
      verified: "github.com/madeye/BaoLianDeng/"
  name "BaoLianDeng"
  desc "VPN proxy powered by Mihomo (Clash Meta)"
  homepage "https://madeye.github.io/BaoLianDeng/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
