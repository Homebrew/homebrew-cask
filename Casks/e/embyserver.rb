cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.8.9.0"
  sha256 arm:   "7f84ab44e1893558489f283d1fdd2e355e5bfea35b5362ddd6adf682baad05a2",
         intel: "2d620bd6f0399604b95f8fc7f741ad5d2d9ed2d0c45763527b85b503e507019b"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-#{arch}-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  name "Emby Server"
  desc "Personal media server with apps on just about every device"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
