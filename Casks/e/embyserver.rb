cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.9.1.90"
  sha256 arm:   "846b6fc75639af87aea895f7705e0e9b1a50ddc0a47e1a2a9d914fad54c53bb2",
         intel: "e4e19df19a84ff6f5bada0b20f422ffe96a4d8a1b6d03fd4df10b0323b02a192"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-#{arch}-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  name "Emby Server"
  desc "Personal media server with apps on just about every device"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
