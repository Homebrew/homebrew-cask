cask "font-strichpunkt-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/strichpunktsans/StrichpunktSans%5Bwdth%2Cwght%5D.ttf"
  name "Strichpunkt Sans"
  homepage "https://github.com/strichpunkt-design/Strichpunkt_Sans"

  font "StrichpunktSans[wdth,wght].ttf"

  # No zap stanza required
end
