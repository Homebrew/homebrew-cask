cask "font-noto-serif-kannada" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkannada/NotoSerifKannada%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Kannada"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Kannada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Kannada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifKannada[wght].ttf"

  # No zap stanza required
end
