cask "font-gemunu-libre" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gemunulibre/GemunuLibre%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Gemunu Libre"
  homepage "https://fonts.google.com/specimen/Gemunu+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gemunu Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GemunuLibre[wght].ttf"

  # No zap stanza required
end
