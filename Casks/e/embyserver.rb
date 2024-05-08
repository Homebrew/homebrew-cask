cask "embyserver" do
  version "4.8.6.0"
  sha256 "9cd12eac816a75b756a2cb276f863f7b999d15f2364ca0dc7632b267bf8e0583"

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
