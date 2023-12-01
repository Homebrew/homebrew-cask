cask "netdownloadhelpercoapp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.9"
  sha256 arm:   "f17c6aa209aeedd893dcef7edf3f6f245a7b12eeb19534a06beb3bc173583035",
         intel: "58c188fbc331c7502229f2e48209675ed91ab983e005ff8e2fbc8f7b038bcfc6"

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
