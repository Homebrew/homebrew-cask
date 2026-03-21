cask "font-tilt-neon" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiltneon/TiltNeon%5BXROT%2CYROT%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Tilt Neon"
  homepage "https://fonts.google.com/specimen/Tilt+Neon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tilt Neon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiltNeon[XROT,YROT].ttf"

  # No zap stanza required
end
