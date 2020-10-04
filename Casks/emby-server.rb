cask "emby-server" do
  version "4.5.1.0"
  sha256 "0b9f3cbbff6cf3dc49cccc09ab896610c9748b210a9fc636b87e1a39be5b2af6"

  # github.com/MediaBrowser/Emby.Releases/ was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast "https://github.com/MediaBrowser/Emby.Releases/releases.atom"
  name "Emby Server"
  homepage "https://emby.media/"

  depends_on macos: ">= :high_sierra"

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
