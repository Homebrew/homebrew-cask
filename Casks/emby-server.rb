cask "emby-server" do
  version "4.5.0.50"
  sha256 "83dc5ec97e977b8ce194d99c62b3f33bd1f868b956c49b46ae90c06e5efe4b7f"

  # github.com/MediaBrowser/Emby.Releases/ was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast "https://github.com/MediaBrowser/Emby.Releases/releases.atom"
  name "Emby Server"
  homepage "https://emby.media/"

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
