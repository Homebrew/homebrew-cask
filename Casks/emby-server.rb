cask "emby-server" do
  version "4.5.3.0"
  sha256 "e69ab5bfb1e6facb179a4030c9fedb61b30457355e4647bb1f3db9ad93465899"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  appcast "https://github.com/MediaBrowser/Emby.Releases/releases.atom"
  name "Emby Server"
  homepage "https://emby.media/"

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
