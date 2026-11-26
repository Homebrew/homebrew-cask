cask "font-iosevka" do
  version "34.9.2"
  sha256 "045b208de2328b5d9c89b390bb1587a264b7697bc2288e486aca87d6ac92077a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  zap :not_required
end
