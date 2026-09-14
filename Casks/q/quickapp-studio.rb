cask "quickapp-studio" do
  arch arm: "arm", intel: "x64"

  version "7.1.0"
  sha256 arm:   "14bccc4e11f21570b3be6a3a8a133a1cf5a4fd23333caf6769295a5266e1d9bb",
         intel: "15d912451998d7922c99e89c35ece3276b0ab391b06cd05dcba817cc0b55a179"

  url "https://statres.quickapp.cn/quickapp/show/ide/QuickApp_Studio_#{arch}-#{version}.pkg"
  name "QuickApp Studio"
  name "快应用开发工具"
  desc "Quickapp Development Tool"
  homepage "https://www.quickapp.cn/"

  livecheck do
    url "https://www.quickapp.cn/api/ide/rpk/getPackage"
    regex(/QuickApp[._-]Studio[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  pkg "QuickApp_Studio_#{arch}-#{version}.pkg"

  uninstall quit:    "cn.quickapp.studio",
            pkgutil: [
              "cn.quickapp.studio",
              "com.hapteam.app",
              "com.mygreatcompany.pkg.quickAppIde",
            ]

  zap trash: "~/.快应用开发工具"
end
