cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.8.8.0"
  sha256 arm:   "0f4cb2a08d7f8c9010ce9f4cba335d6cff1a6efe0cf4a03dc0d19c53fa8f93d3",
         intel: "15d6c4a0797c805cf9b8edffc9c062abb33c01710faa2749755052c15fcc6a39"

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
