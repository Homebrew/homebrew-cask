cask "quickapp-ide" do
  version "6.6.1"
  sha256 "260be97a98b1b11aef430e82f0c35334b394953810a86f0988152fe21564dc17"

  url "https://statres.quickapp.cn/quickapp/show/ide/quickapp-ide-#{version}.pkg"
  name "quickapp-ide"
  desc "Quickapp Development Tool"
  homepage "https://www.quickapp.cn/"

  livecheck do
    url "https://www.quickapp.cn/api/ide/rpk/getPackage"
    regex(/quickapp[._-]ide[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  pkg "quickapp-ide-#{version}.pkg"

  postflight do
    set_ownership "~/.快应用开发工具"
  end

  uninstall quit:    "cn.quickapp.ide",
            pkgutil: "com.mygreatcompany.pkg.quickAppIde"

  zap trash: "~/.快应用开发工具"
end
