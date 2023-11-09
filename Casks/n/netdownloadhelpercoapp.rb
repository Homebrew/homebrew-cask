cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.6"
  sha256 arm:   "a613e9748715daafb8ec4cbf5c53d650538b528b84da07c0254e61b98f0326e2",
         intel: "d46562261dfc53e196c1305b4c04e37eee083b569e3d51cdf02f96ec694debfc"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/vdhcoapp-#{version}-mac-#{arch}-installer.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "vdhcoapp-#{version}-mac-#{arch}-installer.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"

  zap rmdir: "~/dwhelper"
end
