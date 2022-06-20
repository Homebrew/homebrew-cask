cask "obs-websocket" do
  version "4.9.1"
  sha256 "cdfb87b0d9ed1ae3fee61af957fb25402a4b65e9d4350e3959704b72e9b89fdb"

  url "https://github.com/Palakis/obs-websocket/releases/download/#{version}/obs-websocket-#{version}-macOS.pkg"
  name "obs-websocket"
  desc "Remote-control OBS Studio through WebSockets"
  homepage "https://github.com/Palakis/obs-websocket"

  livecheck do
      url :url
      strategy :github_latest
  end

  pkg "obs-websocket-#{version}-macOS.pkg"

  uninstall pkgutil: "fr.palakis.obs-websocket"
end
