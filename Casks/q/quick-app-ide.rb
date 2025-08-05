cask "quick-app-ide" do
  version "6.7.2"
  sha256 "b60a47690b8c4e5aaa687301edcad476a1a0b0790e46cb10162a6437dbe77fd0"

  url "https://statres.quickapp.cn/quickapp/show/ide/quickapp-ide-#{version}.pkg"
  name "Quick App IDE"
  name "快应用开发工具"
  desc "Quickapp Development Tool"
  homepage "https://www.quickapp.cn/"

  livecheck do
    url "https://www.quickapp.cn/api/ide/rpk/getPackage"
    regex(/quickapp[._-]ide[._-]*?v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "quickapp-ide-#{version}.pkg"

  uninstall quit:    "cn.quickapp.ide",
            pkgutil: [
              "com.hapteam.app",
              "com.mygreatcompany.pkg.quickAppIde",
            ]

  zap trash: "~/.快应用开发工具"

  caveats do
    requires_rosetta
  end
end
