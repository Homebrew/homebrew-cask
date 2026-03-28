cask "font-iosevka" do
  version "34.3.0"
  sha256 "8a67fdd28e3d915fca793b650eef46964c87a6ceb0cbb4387e331d84464b3fbc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
