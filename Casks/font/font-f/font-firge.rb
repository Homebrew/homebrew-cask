cask "font-firge" do
  version "0.3.0"
  sha256 "c986f621000a6598064c7e2078322ed02040af4f7804d258033df949b35b0527"

  url "https://github.com/yuru7/Firge/releases/download/v#{version}/Firge_v#{version}.zip"
  name "Firge"
  homepage "https://github.com/yuru7/Firge"

  font "Firge_v#{version}/Firge-Bold.ttf"
  font "Firge_v#{version}/Firge-Regular.ttf"
  font "Firge_v#{version}/Firge35-Bold.ttf"
  font "Firge_v#{version}/Firge35-Regular.ttf"
  font "Firge_v#{version}/Firge35Console-Bold.ttf"
  font "Firge_v#{version}/Firge35Console-Regular.ttf"
  font "Firge_v#{version}/FirgeConsole-Bold.ttf"
  font "Firge_v#{version}/FirgeConsole-Regular.ttf"

  # No zap stanza required
end
