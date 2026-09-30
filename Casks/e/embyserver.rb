cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.10.1.0"
  sha256 arm:   "12974f6833d01953733274b52d4396200cf8ff7852135eb8ed91b27fe0b68281",
         intel: "d6a8c1263692a462775d2b9501397360a8882167c50ca40a3a7df2d8eb36da30"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-#{arch}-#{version}.zip"
  name "Emby Server"
  desc "Personal media server with apps on just about every device"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "osx-#{arch}/EmbyServer.app"

  uninstall quit: "com.embyapp.embymediaserver"

  zap trash: "~/.config/emby-server"
end
