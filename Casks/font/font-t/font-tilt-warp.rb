cask "font-tilt-warp" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiltwarp/TiltWarp%5BXROT%2CYROT%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Tilt Warp"
  homepage "https://fonts.google.com/specimen/Tilt+Warp"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tilt Warp",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiltWarp[XROT,YROT].ttf"

  # No zap stanza required
end
