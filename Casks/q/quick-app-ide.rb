cask "quick-app-ide" do
  version "6.7.3"
  sha256 "ec7602a4ac4f4a7aea301cf20c3d9d54283241872de67fa7b0a866412f8230eb"

  url "https://statres.quickapp.cn/quickapp/show/ide/quickapp-ide-#{version}.pkg"
  name "Quick App IDE"
  name "快应用开发工具"
  desc "Quickapp Development Tool"
  homepage "https://www.quickapp.cn/"

  livecheck do
    url "https://www.quickapp.cn/api/ide/rpk/getPackage"
    regex(/quickapp[._-]ide[._-]*?v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
