cask "quick-app-ide" do
  version "6.6.1"
  sha256 "260be97a98b1b11aef430e82f0c35334b394953810a86f0988152fe21564dc17"

  url "https://statres.quickapp.cn/quickapp/show/ide/quickapp-ide-#{version}.pkg"
  name "Quick App IDE"
  name "快应用开发工具"
  desc "Quickapp Development Tool"
  homepage "https://www.quickapp.cn/"

  livecheck do
    url "https://www.quickapp.cn/api/ide/rpk/getPackage"
    regex(/quickapp[._-]ide[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "quickapp-ide-#{version}.pkg"

  uninstall quit:    "cn.quickapp.ide",
            pkgutil: "com.mygreatcompany.pkg.quickAppIde"

  zap trash: "~/.快应用开发工具"

  caveats do
    requires_rosetta
  end
end
