cask "obs-websocket" do
  version "5.0.0"
  sha256 "f7cb0dfc2a9cfa2cdd9793ec28ee9fdab79d6a4fe339a95a2a602133bc5cd6ad"

  url "https://github.com/obsproject/obs-websocket/releases/download/#{version}/obs-websocket-#{version}-macOS.pkg"
  name "obs-websocket"
  desc "Remote-control OBS Studio through WebSockets"
  homepage "https://github.com/obsproject/obs-websocket"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "obs-websocket-#{version}-macOS.pkg"

  uninstall pkgutil: "com.obsproject.obs-websocket"
end
