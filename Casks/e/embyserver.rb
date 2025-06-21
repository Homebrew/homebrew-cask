cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.8.11.0"
  sha256 arm:   "753343c90c95eda6550637a4ff7029f5be1de40cd900dabc27bf259a389db9d0",
         intel: "7b6dd08a69631394f43d8f8ab209887747b2854247b803ab3e17bd56620dc85e"

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
