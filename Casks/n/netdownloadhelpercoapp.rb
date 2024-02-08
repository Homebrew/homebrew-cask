cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.17"
  sha256 arm:   "e67e33c46fd6e8a6c08647ee16c4f77746a234bf06a3cff9d2fa771f666a6d57",
         intel: "e043cb2e255836ad749ab626ef34d186cb9df66741728af9dde67a8c7308dffb"

  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/vdhcoapp-mac-#{arch}-installer.pkg",
      verified: "github.com/mi-g/vdhcoapp/"
  name "Video DownloadHelper Companion App"
  desc "Allows video downloads from the Web"
  homepage "https://www.downloadhelper.net/install-coapp"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "vdhcoapp-mac-#{arch}-installer.pkg"

  uninstall pkgutil: "net.downloadhelper.coapp"

  zap rmdir: "~/dwhelper"
end
