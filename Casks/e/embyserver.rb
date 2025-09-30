cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.9.1.80"
  sha256 arm:   "0c87e49a831f19fe2f5e96ad4cb3ee474d1c899200eca9230344653bfbbbf8d4",
         intel: "ee417b4bb4cdd8e4daa34146c1a40e384a575d210ef99b0f7abb39a574cc1f61"

  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-#{arch}-#{version}.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  name "Emby Server"
  desc "Personal media server with apps on just about every device"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "EmbyServer.app"

  zap trash: "~/.config/emby-server"
end
