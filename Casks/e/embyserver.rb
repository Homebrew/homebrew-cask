cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.9.5.0"
  sha256 arm:   "65ba970a0037edeefbbba957c65a0acabdb129e543589beb85408b98c03573aa",
         intel: "a7b4c010dbcb573fe27338399f637386a7423c751c0f96103f81497920380a11"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-#{arch}-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  name "Emby Server"
  desc "Personal media server with apps on just about every device"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "osx-#{arch}/EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
