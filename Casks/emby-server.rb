cask "emby-server" do
  version "4.5.4.0"
  sha256 "9c95e5bdfc98cb3ae9c44cf31e50128df96f73d6efe25ff8d632d51ae063c40c"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  appcast "https://github.com/MediaBrowser/Emby.Releases/releases.atom"
  name "Emby Server"
  homepage "https://emby.media/"

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
