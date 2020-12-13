cask "emby-server" do
  version "4.5.2.0"
  sha256 "d37a3c699aa12a8d21e46bafb7bef671db5f29d950d527d14678eedad7529b9c"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  appcast "https://github.com/MediaBrowser/Emby.Releases/releases.atom"
  name "Emby Server"
  homepage "https://emby.media/"

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
