cask "emby-server" do
  version "4.7.2.0"
  sha256 "e8592240e929c16a7119c25fa0276f2a16373aca8e4b43eb5f2349f3ba9f577f"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip",
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
