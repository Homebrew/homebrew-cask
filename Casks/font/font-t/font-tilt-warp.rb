cask "font-tilt-warp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiltwarp/TiltWarp%5BXROT%2CYROT%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Tilt Warp"
  homepage "https://fonts.google.com/specimen/Tilt+Warp"

  font "TiltWarp[XROT,YROT].ttf"

  # No zap stanza required
end
