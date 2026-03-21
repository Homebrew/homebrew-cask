cask "font-eczar" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eczar/Eczar%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Eczar"
  homepage "https://fonts.google.com/specimen/Eczar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Eczar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Eczar[wght].ttf"

  # No zap stanza required
end
