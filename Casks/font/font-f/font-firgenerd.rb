cask "font-firgenerd" do
  version "0.3.0"
  sha256 "54cd76378fbc5025f42d441d95ca6ec1d3ecc4270e6107558840fed7c04cfe4f"

  url "https://github.com/yuru7/Firge/releases/download/v#{version}/FirgeNerd_v#{version}.zip"
  name "FirgeNerd"
  homepage "https://github.com/yuru7/Firge"

  font "FirgeNerd_v#{version}/Firge35NerdConsole-Bold.ttf"
  font "FirgeNerd_v#{version}/Firge35NerdConsole-Regular.ttf"
  font "FirgeNerd_v#{version}/FirgeNerdConsole-Bold.ttf"
  font "FirgeNerd_v#{version}/FirgeNerdConsole-Regular.ttf"

  # No zap stanza required
end
