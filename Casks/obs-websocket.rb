cask "obs-websocket" do
  version "4.8.0"
  sha256 "8147a14fd8a6b17a9ea1921d3ab743cc4aac430dcc893d0cdb466ae428a28ef6"

  url "https://github.com/Palakis/obs-websocket/releases/download/#{version}/obs-websocket-#{version}-macOS.pkg"
  name "obs-websocket"
  desc "Remote-control OBS Studio through WebSockets"
  homepage "https://github.com/Palakis/obs-websocket"

  livecheck do
    url :url
    strategy :git
  end

  pkg "obs-websocket-#{version}-macOS.pkg"

  uninstall pkgutil: "fr.palakis.obs-websocket"
end
