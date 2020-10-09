cask "emby-server" do
  version "4.5.2.0"
  sha256 "78f2c0a0d83703cbb1b1fd567a65f405cb815d75460cf4079bada73d3e8d08f6"

  # github.com/MediaBrowser/Emby.Releases/ was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast "https://github.com/MediaBrowser/Emby.Releases/releases.atom"
  name "Emby Server"
  homepage "https://emby.media/"

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
