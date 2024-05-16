cask "font-national-park" do
  version "1.000"
  sha256 :no_check

  url "https://files.cargocollective.com/c206464/NationalPark.zip",
      verified: "cargocollective.com/"
  name "National Park"
  homepage "https://nationalparktypeface.com/"

  font "NationalPark-Thin.otf"
  font "NationalPark-Regular.otf"
  font "NationalPark-Outline.otf"
  font "NationalPark-Heavy.otf"

  # No zap stanza required
end
