cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.8.10.0"
  sha256 arm:   "feb3b8f57e1ed92cfa4ae7e7ec21e449508bfffee053022050a435e22bdaaff4",
         intel: "7e7166b88dbffa461a67e813fe71f8019b74eaef07ae42a1b3c4e99375778cc3"

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
