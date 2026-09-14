cask "embyserver" do
  arch arm: "arm64", intel: "x64"

  version "4.10.0.40"
  sha256 arm:   "3c30533e647266ba7d10c6e53e5bce5f1d0e3cd006b77f3f9fdc769818efa21f",
         intel: "9d42694bfd908560a66e9a51cfa7707d4ead5a4ac670940f8758be0b64fadc04"

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
