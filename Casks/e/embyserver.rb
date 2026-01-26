cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.9.3.0"
  sha256 arm:   "2f7e658e44592520f8cdb4839e8748557b541956997d1ab58e5aac81942c0e9b",
         intel: "246fa8c51b17d138197b2da43fc037fb56c237fe9adfafa8278464ae69f33e82"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-#{arch}-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  name "Emby Server"
  desc "Personal media server with apps on just about every device"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "osx-#{arch}/EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
