cask "quick-app-ide" do
  version "6.7.2"
  sha256 "619cf8ba2ac75e66aedc43b433234b27fea0f53e11c6baec9ac3771c1f7824c5"

  url "https://statres.quickapp.cn/quickapp/show/ide/quickapp-ide-#{version}.pkg"
  name "Quick App IDE"
  name "快应用开发工具"
  desc "Quickapp Development Tool"
  homepage "https://www.quickapp.cn/"

  livecheck do
    url "https://www.quickapp.cn/api/ide/rpk/getPackage"
    regex(/quickapp[._-]ide[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  no_autobump! because: :requires_manual_review

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
