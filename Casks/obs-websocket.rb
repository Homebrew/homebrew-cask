cask "obs-websocket" do
  version "4.9.0"
  sha256 "df14cb49e179d9f6a52459cd12539fd4c2945e516c9877bcd9538472a7f714eb"

  url "https://github.com/Palakis/obs-websocket/releases/download/#{version}/obs-websocket-#{version}-macOS.pkg"
  appcast "https://github.com/Palakis/obs-websocket/releases.atom"
  name "obs-websocket"
  desc "Remote-control OBS Studio through WebSockets"
  homepage "https://github.com/Palakis/obs-websocket"

  pkg "obs-websocket-#{version}-macOS.pkg"

  uninstall pkgutil: "fr.palakis.obs-websocket"
end
