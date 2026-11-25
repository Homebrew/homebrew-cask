cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.10.2.0"
  sha256 arm:   "6f4afc702d4f62b5879b543151dd327e41ec994c4b23038b42b583b13ff155c1",
         intel: "5d825a353b65ed662206b620c5f2267a7a10043b91a6f8da47dd49375ee25a82"

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
